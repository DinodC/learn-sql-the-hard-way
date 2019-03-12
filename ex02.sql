-- Exercise 2: Creating a multi-table database

DROP TABLE IF EXISTS person;
DROP TABLE IF EXISTS pet;
DROP TABLE IF EXISTS person_pet;
DROP TABLE IF EXISTS car;
DROP TABLE IF EXISTS person_car;

CREATE TABLE person (
  id INTEGER PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  age INTEGER
  -- pet_id INTEGER
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
  -- pet_number INTEGER
);

CREATE TABLE car (
  id INTEGER PRIMARY KEY,
  model TEXT,
  brand TEXT,
  mileage TEXT
);

CREATE TABLE person_car (
  person_id INTEGER,
  car_id INTEGER
  -- car_number INTEGER
);
