package model

type Data struct {
	Standards  []*Standard
	Narratives []*Document
	Policies   []*Document
	Procedures []*Procedure
	Tickets    []*Ticket
	Audits     []*Audit
}

// see document.go and yaml
// document describes majorRevisions in yaml
// this adds the Date / Comment underneath 
// revise/add as needed 

type Revision struct {
	Date    string `yaml:"date"`
	Comment string `yaml:"version"`
}
// this also ties back to document.go
type Satisfaction map[string][]string
