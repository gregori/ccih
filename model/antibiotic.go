package model

import (
	"errors"
	"log"

	"github.com/jinzhu/gorm"
)

type Antibiotic struct {
	ID        int
	Name      string `gorm:"not null;unique"`
	ShortName string `gorm:"not null;unique"`
	Gram      bool
	UpdatedAt time.Time
	CreatedAt time.Time
}
