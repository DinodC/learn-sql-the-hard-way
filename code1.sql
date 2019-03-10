-- Drop tables
DROP TABLE IF EXISTS person;
DROP TABLE IF EXISTS pet;
DROP TABLE IF EXISTS person_pet;

-- Create tables
CREATE TABLE person (
  id INTEGER PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  age INTEGER
);

CREATE TABLE pet (
  id INTEGER PRIMARY KEY,
  name TEXT,
  breed TEXT,
  age INTEGER,
  dead INTEGER
);

CREATE TABLE person_pet (
  person_id INTEGER,
  pet_id INTEGER
);

-- Evolve tables
-- ALTER TABLE person ADD COLUMN dob DATETIME;
-- ALTER TABLE person_pet ADD COLUMN purchased_on DATETIME;
-- PostgreSQL use DATE instead DATETIME
ALTER TABLE person ADD COLUMN dob DATE;
ALTER TABLE person_pet ADD COLUMN purchased_on DATE;
