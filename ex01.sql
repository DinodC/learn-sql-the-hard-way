-- Exercise 1: Create tables

DROP TABLE IF EXISTS person;

CREATE TABLE person (
  id INTEGER PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  age INTEGER,
  -- Add additional columns
  occupation TEXT,
  salary INTEGER
);
