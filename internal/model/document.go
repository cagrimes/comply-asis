package model

import "time"

// Restructure Name/Acronym and Revisions/Satisfies with different labels? 
// Such as 'revisions' or 'revisionDate' vs 'majorRevisions'
type Document struct {
	Name    string `yaml:"name"` // Policy Name 'ASIS Access Control Policy'
	Acronym string `yaml:"acronym"` // Short Name 'Access_Control'

	Revisions      []Revision   `yaml:"majorRevisions"` // date & comment / see: model.go
	Satisfies      Satisfaction `yaml:"satisfies"` // Reads from TSC-2017.YAML file 
	FullPath       string
	OutputFilename string
	ModifiedAt     time.Time
	Body           string
}
