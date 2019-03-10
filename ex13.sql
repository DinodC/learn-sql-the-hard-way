-- Exercise 13: Migrating and evolving data

-- Add column(s) to person
ALTER TABLE person ADD COLUMN IF NOT EXISTS dead INTEGER;
ALTER TABLE person ADD COLUMN IF NOT EXISTS phone_number TEXT;
ALTER TABLE person ADD COLUMN IF NOT EXISTS salary REAL;
-- ALTER TABLE person ADD COLUMN dob DATETIME;
-- PostgreSQL use DATE instead DATETIME
ALTER TABLE person ADD COLUMN IF NOT EXISTS dob DATE;

-- Add column(s) to pet
-- ALTER TABLE pet ADD COLUMN dob DATETIME;
-- PostgreSQL use DATE instead DATETIME
ALTER TABLE pet ADD COLUMN IF NOT EXISTS dob DATE;
ALTER TABLE pet ADD COLUMN IF NOT EXISTS parent INTEGER;

-- Add column(s) to person_pet
-- ALTER TABLE person_pet ADD COLUMN purchased_on DATETIME;
-- PostgreSQL use DATE instead DATETIME 
ALTER TABLE person_pet ADD COLUMN IF NOT EXISTS purchased_on DATE;

-- Update person
UPDATE person SET dead = 0, phone_number = '12345678', salary = 100000.00,
  dob = '1984-04-09' WHERE first_name = 'Dino';
UPDATE person SET dead = 0, phone_number = '11111111', salary = 50000.00,
  dob = '1985-10-01' WHERE first_name = 'Anton';
UPDATE person SET dead = 0, phone_number = '00000000', salary = 150000.00,
  dob = '1969-01-03' WHERE first_name = 'Cynthia';

-- Update pet
UPDATE pet SET dob = '1919-03-01', parent = 3 WHERE name = 'Durga';
UPDATE pet SET dob = '1919-03-02', parent = 3 WHERE name = 'Lakshmi';
UPDATE pet SET dob = '1919-03-03', parent = 4 WHERE name = 'Shani';
UPDATE pet SET dob = '1919-03-01' WHERE name = 'Vishnu';
UPDATE pet SET dob = '1919-03-01' WHERE name = 'Shiva';
UPDATE pet SET dob = '1919-03-01', parent = 4 WHERE name = 'Ganesha';
UPDATE pet SET dob = '1919-03-03', parent = 3 WHERE name = 'Indra';

-- Update person_pet
UPDATE person_pet SET purchased_on = '2001-01-01' WHERE pet_id = 0;
UPDATE person_pet SET purchased_on = '2002-07-01' WHERE pet_id = 1;
UPDATE person_pet SET purchased_on = '2003-01-01' WHERE pet_id = 2;
UPDATE person_pet SET purchased_on = '2008-07-01' WHERE pet_id = 3;
UPDATE person_pet SET purchased_on = '2010-01-01' WHERE pet_id = 4;
UPDATE person_pet SET purchased_on = '2014-02-01' WHERE pet_id = 5;

-- Add people in person
INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob)
  VALUES (3, 'Val', 'de Castro', 65, 0, '55555555', 100000.00, '1964-12-15');
INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob)
  VALUES (4, 'David', 'de Castro', 29, 0, '33333333', 50000.00, '1989-09-01');

-- Add David's pets on person_pet
INSERT INTO person_pet (person_id, pet_id)
  VALUES (4, 0);
INSERT INTO person_pet (person_id, pet_id)
  VALUES (4, 2);
INSERT INTO person_pet (person_id, pet_id)
  VALUES (4, 4);

-- Update person_pet
UPDATE person_pet SET purchased_on = '2001-01-01' WHERE pet_id = 0;
UPDATE person_pet SET purchased_on = '2003-01-01' WHERE pet_id = 2;
UPDATE person_pet SET purchased_on = '2010-01-01' WHERE pet_id = 4;

-- Find all the names of pets and their owners bought after 2014
-- Separately
-- Pets
SELECT name FROM pet WHERE id IN (
  SELECT pet_id FROM person_pet
  WHERE purchased_on > '2004-12-31'
);
-- Parents
SELECT first_name FROM person WHERE id IN (
  SELECT person_id FROM person_pet
  WHERE purchased_on > '2004-12-31'
);
-- Together
SELECT person.first_name, pet.name FROM person_pet, person, pet
  WHERE purchased_on > '2004-01-01' AND
  person.id = person_pet.person_id AND
  pet.id = person_pet.pet_id;

-- Find the pets that are children of a given pet
-- Vishnu
SELECT name FROM pet WHERE parent = 3;
-- Shiva
SELECT name  FROM pet WHERE parent = 4;
