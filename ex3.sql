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
