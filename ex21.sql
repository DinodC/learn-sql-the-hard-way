-- Exercise 21: Using views

-- Query owned pets and group by breed and dead
SELECT pet.breed, pet.dead, count(dead)
  FROM person, person_pet, pet
  WHERE person.id = person_pet.person_id AND
  pet.id = person_pet.pet_id
  GROUP BY pet.breed, pet.dead;

-- Create a view of the previous query
CREATE VIEW dead_pets AS
SELECT pet.breed, pet.dead, count(pet.dead) AS total
  FROM person, person_pet, pet
  WHERE person.id = person_pet.person_id AND
  pet.id = person_pet.pet_id
  GROUP BY pet.breed, pet.dead;

-- Check
-- .tables
-- PostgreSQL
\dv

-- Test new view
SELECT * FROM dead_pets;

-- Query pets who are > 10
SELECT * FROM dead_pets WHERE total > 10;

-- DELETE Cheetah FROM pet
DELETE FROM pet WHERE breed = 'Cheetah';

-- Test updated view
SELECT * FROM dead_pets;

-- Remove new view
DROP VIEW dead_pets;

-- Check
-- .tables
-- PostgreSQL
\dv

-- Query owned pets purchased after 2012
-- SELECT pet.name, person_pet.purchased_on FROM pet, person, person_pet
--   WHERE pet.id = person_pet.pet_id AND
--   person.id = person_pet.person_id AND
--   person_pet.purchased_on > date('2012-01-01')
--   ORDER BY person_pet.purchased_on;
-- PostgreSQL
SELECT pet.name, person_pet.purchased_on FROM pet, person, person_pet
  WHERE pet.id = person_pet.pet_id AND
  person.id = person_pet.person_id AND
  person_pet.purchased_on > DATE '2012-01-01'
  ORDER BY person_pet.purchased_on;

-- CREATE VIEW of purchased pets after 2012
-- CREATE VIEW purchased_new AS
-- SELECT pet.name, person_pet.purchased_on FROM pet, person, person_pet
--   WHERE pet.id = person_pet.pet_id AND
--   person.id = person_pet.person_id AND
--   person_pet.purchased_on > date('2012-01-01')
--   ORDER BY person_pet.purchased_on;
-- PostgreSQL
CREATE VIEW purchased_new AS
SELECT pet.name, person_pet.purchased_on FROM pet, person, person_pet
  WHERE pet.id = person_pet.pet_id AND
  person.id = person_pet.person_id AND
  person_pet.purchased_on > DATE '2012-01-01'
  ORDER BY person_pet.purchased_on;

-- CREATE VIEW of purchased pets before 2012
-- CREATE VIEW purchased_old AS
-- SELECT pet.name, person_pet.purchased_on FROM pet, person, person_pet
--   WHERE pet.id = person_pet.pet_id AND
--   person.id = person_pet.person_id AND
--   person_pet.purchased_on < date('2012-01-01')
--   ORDER BY person_pet.purchased_on;
-- PostgreSQL
CREATE VIEW purchased_old AS
SELECT pet.name, person_pet.purchased_on FROM pet, person, person_pet
  WHERE pet.id = person_pet.pet_id AND
  person.id = person_pet.person_id AND
  person_pet.purchased_on < DATE '2012-01-01'
  ORDER BY person_pet.purchased_on;

-- Check
-- .tables
-- PostgreSQL
\dv

-- Query pets purchased this year
-- SELECT * FROM purchased_new WHERE purchased_on > date('2019-01-01');
-- PostgreSQL
SELECT * FROM purchased_new WHERE purchased_on > DATE '2019-01-01';

-- Query pets purchased since 2017
-- SELECT * FROM purchased_new WHERE purchased_on > date('2018-01-01');
-- PostgreSQL
SELECT * FROM purchased_new WHERE purchased_on > DATE '2017-01-01';

-- Query pets purchased in the 80s
-- SELECT * FROM purchased_old WHERE purchased_on > date('1980-01-01') AND
--   purchased_on < date('1990-01-01');
-- PostgreSQL
SELECT * FROM purchased_old WHERE purchased_on > DATE '1980-01-01' AND
  purchased_on < DATE '1990-01-01';


-- Query pets purchased in the 90s
-- SELECT * FROM purchased_old WHERE purchased_on > date('1990-01-01') AND
--   purchased_on < date('2000-01-01');
-- PostgreSQL
SELECT * FROM purchased_old WHERE purchased_on > DATE '1990-01-01' AND
  purchased_on < DATE '2000-01-01';


-- DROP VIEW purchased_recent
DROP VIEW purchased_new;
DROP VIEW purchased_old;


-- Check
-- .tables
-- PostgreSQL
\dv
