-- Exercise 11: Updating complex data

-- This should fail because 0 is already taken
INSERT INTO person (id, first_name, last_name, age)
  VALUES (0, 'Val', 'de Castro', 65);

-- -- We can force it by doing an INSERT OR REPLACE
-- INSERT OR REPLACE INTO person (id, first_name, last_name, age)
--   VALUES (0, 'Val', 'de Castro', 65);

-- PostgreSQL INSERT OR REPLACE does not work
INSERT INTO person (id, first_name, last_name, age)
  VALUES (0, 'Val', 'de Castro', 65)
  ON CONFLICT (id)
  DO
    UPDATE
      SET first_name = 'Val', last_name = 'de Castro', age = 65;

-- Dino is out, Val is in
SELECT * FROM person;

-- -- Shorthand INSERT OR REPLACE
-- REPLACE INTO person (id, first_name, last_name, age)
-- VALUES (0, 'Dino', 'de Castro', 35);

-- PostgreSQL INSERT OR REPLACE does not work
INSERT INTO person (id, first_name, last_name, age)
  VALUES (0, 'Dino', 'de Castro', 35)
  ON CONFLICT (id)
  DO
    UPDATE
      SET first_name = 'Dino', last_name = 'de Castro', age = 35;

-- Dino is back in, Val is out
SELECT * FROM person;

-- -- Durga the lion is out, Jack the parrot is in
-- INSERT OR REPLACE INTO pet (id, name, breed, age, dead)
--  VALUES (0, 'Jack', 'Parrot', 5, 0);

-- PostgreSQL INSERT OR REPLACE does not work
INSERT INTO pet (id, name, breed, age, dead)
  VALUES (0, 'Jack', 'Parrot', 5, 0)
  ON CONFLICT (id)
  DO
    UPDATE
      SET name = 'Jack', breed = 'Parrot', age = 5, dead = 0;

-- Check
SELECT * FROM pet;
