class ComplyAsis < Formula
  desc "SOC policy builder"
  homepage "http://iassecurity.net"
  url "file:///opt/homebrew/Library/cagrimes/comply-asis"
  version "1.3"
  sha256 "789ec19d5de247d3ff363bada1140b81ab1ca6096606dd79ec4597811e90366d"
  license "Apache-2.0"

  depends_on "cmake" => :build
  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    ENV.prepend_create_path "PATH", buildpath/"bin"
    (buildpath/"src/github.com/cagrimes/comply-asis").install buildpath.children
    cd "src/github.com/cagrimes/comply-asis" do
      system "make", "brew"
      bin.install "bin/comply-asis"

      # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
      # system "./configure", *std_configure_args, "--disable-silent-rules"
    end
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test comply-asis`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    # system "false"
    system "#{bin}/sdm", "logout"
  end
end
