
-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
CREATE TABLE antibiotic (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name CHAR(100) NOT NULL UNIQUE,
    short_name CHAR(10) NOT NULL UNIQUE,
    gram TINYINT NOT NULL DEFAULT 0,
    created_at DATETIME NOT NULL DEFAULT NOW,
    updated_at DATETIME NOT NULL DEFAULT NOW
);

-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back
DROP TABLE antibiotic;

