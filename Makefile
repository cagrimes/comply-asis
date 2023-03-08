.DEFAULT_GOAL := comply
GO_SOURCES := $(shell find . -name '*.go')
THEME_SOURCES := $(shell find themes)

assets: $(THEME_SOURCES)
	go install -mod=vendor github.com/containous/go-bindata/go-bindata
	go install -mod=vendor github.com/elazarl/go-bindata-assetfs/go-bindata-assetfs
	go-bindata-assetfs -pkg theme -prefix themes themes/...
	mv bindata.go internal/theme/themes_bindata.go

comply: assets $(GO_SOURCES)
	@# $(eval VERSION := $(shell git describe --tags --always --dirty="-dev"))
	@# $(eval LDFLAGS := -ldflags='-X "github.com/strongdm/comply/internal/cli.Version=$(VERSION)"')
	go build $(LDFLAGS) github.com/cagrimes/comply-asis

dist: clean
	$(eval VERSION := $(shell git describe --tags --always --dirty="-dev"))
	$(eval LDFLAGS := -ldflags='-X "github.com/cagrimes/comply-asis/internal/cli.Version=$(VERSION)"')
	mkdir dist
	echo $(VERSION)
	GOOS=darwin GOARCH=amd64 CGO_ENABLED=0 go build -gcflags=-trimpath=$(GOPATH) -asmflags=-trimpath=$(GOPATH) -ldflags '-extldflags "-static"' $(LDFLAGS) -o dist/comply-$(VERSION)-darwin-amd64 .
	GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -gcflags=-trimpath=$(GOPATH) -asmflags=-trimpath=$(GOPATH) -ldflags '-extldflags "-static"' $(LDFLAGS) -o dist/comply-$(VERSION)-linux-amd64 .
	GOOS=windows GOARCH=amd64 CGO_ENABLED=0 go build -gcflags=-trimpath=$(GOPATH) -asmflags=-trimpath=$(GOPATH) -ldflags '-extldflags "-static"' $(LDFLAGS) -o dist/comply-$(VERSION)-windows-amd64.exe .
	cd dist && tar -czvf comply-$(VERSION)-darwin-amd64.tgz comply-$(VERSION)-darwin-amd64
	cd dist && tar -czvf comply-$(VERSION)-linux-amd64.tgz comply-$(VERSION)-linux-amd64
	cd dist && zip comply-$(VERSION)-windows-amd64.zip comply-$(VERSION)-windows-amd64.exe

brew: clean $(GO_SOURCES)
	$(eval VERSION := $(shell cat version))
	$(eval LDFLAGS := -ldflags='-X "github.com/cagrimes/comply-asis/internal/cli.Version=$(VERSION)"')
	mkdir bin
	GOOS=darwin GOARCH=amd64 CGO_ENABLED=0 go build -gcflags=-trimpath=$(GOPATH) -asmflags=-trimpath=$(GOPATH) $(LDFLAGS) -o bin/comply .

clean:
	rm -rf bin
	rm -rf dist
	rm -f comply

install: assets $(GO_SOURCES)
	go install github.com/cagrimes/comply-asis

push-assets: is-clean assets
	git commit -am "automated asset refresh (via Makefile)"
	git push

is-clean:
ifeq ($(strip $(shell git status --porcelain 2>/dev/null)),)
	# good to proceed
else
	@echo working directory must be clean to proceed
	@exit 1
endif

docker:
	cd build && docker build -t cagrimes/pandoc:edge .
	docker push cagrimes/pandoc:edge

cleanse:
	git checkout --orphan newbranch
	git add -A
	git commit -m "Initial commit"
	git branch -D master
	git branch -m master
	git push -f origin master
	git gc --aggressive --prune=all

release-env:
ifndef GH_LOGIN
	$(error GH_LOGIN must be set to a valid GitHub token)
endif
ifndef COMPLY_TAPDIR
	$(error COMPLY_TAPDIR must be set to the path of the comply homebrew tap repo)
endif
ifndef COMPLY_RELEASE_WEBHOOK
	$(error COMPLY_RELEASE_WEBHOOK must be set to a webhook for the release Slack channel)
endif

release: release-env dist release-deps
	$(eval VERSION := $(shell git describe --tags --always --dirty="-dev"))
	github-release release \
	--security-token $$GH_LOGIN \
	--user cagrimes \
	--repo comply-asis \
	--tag $(VERSION) \
	--name $(VERSION)

	github-release upload \
	--security-token $$GH_LOGIN \
	--user cagrimes \
	--repo comply-asis \
	--tag $(VERSION) \
	--name comply-asis-$(VERSION)-darwin-amd64.tgz \
	--file dist/comply-$(VERSION)-darwin-amd64.tgz

	github-release upload \
	--security-token $$GH_LOGIN \
	--user cagrimes \
	--repo comply-asis \
	--tag $(VERSION) \
	--name comply-asis-$(VERSION)-linux-amd64.tgz \
	--file dist/comply-asis-$(VERSION)-linux-amd64.tgz

	@echo "Update homebrew formula with the following: "
	$(eval SHA := $(shell curl -s -L https://github.com/strongdm/comply/archive/$(VERSION).tar.gz |shasum -a 256|cut -d" " -f1))
	@echo "version $(VERSION) sha $(SHA)"
	cd $$COMPLY_TAPDIR && ./update.sh $(VERSION) $(SHA)

patch-release: release-env patch release
	$(eval VERSION := $(shell git describe --tags --always --dirty="-dev"))
	curl -X POST --data-urlencode 'payload={"channel": "#release", "username": "release", "text": "comply $(VERSION) released", "icon_emoji": ":shipit:"}' $$COMPLY_RELEASE_WEBHOOK

minor-release: release-env minor release
	$(eval VERSION := $(shell git describe --tags --always --dirty="-dev"))
	curl -X POST --data-urlencode 'payload={"channel": "#release", "username": "release", "text": "comply $(VERSION) released", "icon_emoji": ":shipit:"}' $$COMPLY_RELEASE_WEBHOOK

docker-release:
	docker build --build-arg COMPLY_VERSION=`cat VERSION` -t strongdm/comply .
	docker push cagrimes/comply-asis

patch: clean gitsem
	gitsem -m "increment patch for release (via Makefile)" patch
	git push
	git push origin --tags

minor: clean gitsem
	gitsem -m "increment minor for release (via Makefile)" minor
	git push
	git push origin --tags

release-deps: gitsem gh-release

gitsem:
	go install github.com/Clever/gitsem

gh-release:
	go install github.com/aktau/github-release
