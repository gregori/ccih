package model

import (
	"errors"
	"log"

	"github.com/go-xorm/xorm"
	_ "github.com/mattn/go-sqlite3"
)

type Antibiotic struct {
	Id        int64
	Name      string `xorm:"unique"`
	ShortName string `xorm:"unique"`
	Gram      string
}
