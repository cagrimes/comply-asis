package model

import "time"

type Procedure struct {
	Name string `yaml:"name"`
	ID   string `yaml:"id"`
	Cron string `yaml:"cron"`

// See document.go & model.go
	Revisions      []Revision   `yaml:"majorRevisions"`
	Satisfies      Satisfaction `yaml:"satisfies"`
	FullPath       string
	OutputFilename string
	ModifiedAt     time.Time
	Body           string
}
