-- Drop tables
DROP TABLE IF EXISTS person;
DROP TABLE IF EXISTS pet;
DROP TABLE IF EXISTS person_pet;
DROP TABLE IF EXISTS car;
DROP TABLE IF EXISTS person_car;

-- Exercise 2: Creating a multi-table database

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
-- Exercise 3: Inserting data

INSERT INTO person(id, first_name, last_name, age)
  VALUES (0, 'Dino', 'de Castro', 35);
-- INSERT INTO person(id, first_name, last_name, age, pet_id)
--   VALUES (0, 'Dino', 'de Castro', 35, 0);

INSERT INTO person(id, first_name, last_name, age)
  VALUES (1, 'Anton', 'de Castro', 34);
-- INSERT INTO person(id, first_name, last_name, age, pet_id)
--   VALUES (1, 'Anton', 'de Castro', 34, 0);

INSERT INTO person(id, first_name, last_name, age)
  VALUES (2, 'Cynthia', 'de Castro', 60);

-- Insert data into pet
INSERT INTO pet(id, name, breed, age, dead)
  VALUES (0, 'Durga', 'Lion', 100, 0);

INSERT INTO pet VALUES (1, 'Lakshmi', 'Owl', 100, 1);

INSERT INTO pet(id, name, breed, age, dead)
  VALUES (2, 'Shani', 'Crow', 100, 1);

INSERT INTO pet(id, name, breed, age, dead)
  VALUES (3, 'Vishnu', 'Eagle', 100, 0);

INSERT INTO pet(id, name, breed, age, dead)
  VALUES (4, 'Shiva', 'Bull', 100, 0);

INSERT INTO pet(id, name, breed, age, dead)
  VALUES (5, 'Ganesha', 'Mouse', 100, 1);

INSERT INTO pet (id, name, breed, age, dead)
  VALUES (6, 'Indra', 'Elephant', 1, 0);
-- Exercise 4: Insert referential data

-- Dino's 'relation' to pets
INSERT INTO person_pet (person_id, pet_id) VALUES (0, 0);
INSERT INTO person_pet VALUES (0, 1);
INSERT INTO person_pet VALUES (0, 2);
INSERT INTO person_pet VALUES (0, 3);

-- Anton's 'relation' to pets
INSERT INTO person_pet (person_id, pet_id) VALUES (1, 3);
INSERT INTO person_pet (person_id, pet_id) VALUES (1, 5);

-- Cynthia's 'relation' to pets
INSERT INTO person_pet (person_id, pet_id) VALUES (2, 4);

-- Exercise 7: Deleting data
-- Make sure there are dead pets
SELECT name, age FROM pet WHERE dead = 1;

-- Delete pets who are dead
DELETE FROM pet WHERE dead = 1;

-- Delete pets named Durga or Shani
DELETE FROM pet WHERE name = 'Durga' OR name = 'Shani';

-- Make sure that deleted pets are gone
SELECT * FROM pet;

-- Insert back or resurrect
INSERT INTO pet VALUES (0, 'Durga', 'Lion', 100, 1);
INSERT INTO pet VALUES (1, 'Lakshmi', 'Owl', 100, 1);
INSERT INTO pet VALUES (2, 'Shani', 'Crow', 100, 0) ;
INSERT INTO pet VALUES (5, 'Ganesha', 'Mouse', 100, 1);

-- Check that pets are back
SELECT * FROM pet;
