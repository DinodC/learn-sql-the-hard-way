-- Exercise 17: Dates, times and order by

-- Query everyone who is older than 10
-- SELECT * FROM person WHERE dob < DATE('now', '-10 years');
-- PostgreSQL no DATE function
SELECT * FROM person WHERE dob < CURRENT_DATE - INTERVAL '10 years';
-- Same but sort by dob
-- SELECT * FROM person WHERE dob < DATE('now', '-10 years') ORDER BY dob;
-- PostgreSQL no DATE function
SELECT * FROM person WHERE dob < CURRENT_DATE - INTERVAL '10 years' ORDER BY dob;

-- Query everyone before 1970
-- SELECT * FROM person WHERE dob < DATE ('1970-01-01');
-- PostgreSQL
SELECT * FROM person WHERE dob < DATE '1970-01-01';
-- Same but sort by dob
-- SELECT * FROM person WHERE dob < DATE('1970-01-01') ORDER BY dob;
-- PostgreSQL
SELECT * FROM person WHERE dob < DATE '1970-01-01' ORDER BY dob;

-- Query all pets purchased since last year
-- SELECT * FROM person_pet WHERE purchased_on > DATE('now', 'start of year');
-- PostgreSQL no DATE function
SELECT * FROM person_pet WHERE purchased_on BETWEEN DATE '2018-01-01' and NOW()::DATE;
-- Same but sort by purchased_on
-- SELECT * FROM person_pet WHERE purchased_on > DATE('now', 'start of year') ORDER BY purchased_on;
-- PostgreSQL no DATE function
SELECT * FROM person_pet WHERE purchased_on BETWEEN DATE '2018-01-01' and NOW()::DATE ORDER BY purchased_on;
-- Same but using numbers
-- SELECT * FROM person_pet WHERE purchased_on > DATE('2019-01-01');
-- PostgreSQL no DATE function
SELECT * FROM person_pet WHERE purchased_on > '2018-01-01';

-- Query all pets purchased between 1990 AND 2000
-- SELECT * FROM person_pet
--   WHERE purchased_on > DATE('1990-01-01') AND
--   purchased_on < DATE('2000-01-01');
-- PostgreSQL
SELECT * FROM person_pet
  WHERE purchased_on BETWEEN DATE '1990-01-01' AND DATE '2000-01-01';
-- Same but sort by purchased_on
-- SELECT * FROM person_pet
--   WHERE purchased_on > DATE('1990-01-01') AND
--   purchased_on < DATE('2000-01-01')
--   ORDER BY purchased_on;
-- PostgreSQL
SELECT * FROM person_pet
  WHERE purchased_on BETWEEN DATE '1990-01-01' AND DATE '2000-01-01'
  ORDER BY purchased_on;

-- Query all pets purchased between 1990 AND 2000 AND link to pet
-- SELECT pet.name, pet.breed, pet.age, pet.dead, person_pet.purchased_on
--   FROM pet, person_pet
--   WHERE purchased_on > DATE('1990-01-01') AND
--   purchased_on < DATE('2000-01-01') AND
--   pet.id = person_pet.pet_id
--   ORDER BY purchased_on;
-- PostgreSQL
SELECT pet.name, pet.breed, pet.age, pet.dead, person_pet.purchased_on
  FROM pet, person_pet
  WHERE purchased_on BETWEEN DATE '1990-01-01' AND DATE '2000-01-01' AND
  pet.id = person_pet.pet_id
  ORDER BY purchased_on;
-- Same but ORDER BY both pet.age AND purchased_on
-- SELECT pet.name, pet.breed, pet.age, pet.dead, person_pet.purchased_on
--   FROM pet, person_pet
--   WHERE purchased_on > DATE('1990-01-01') AND
--   purchased_on < DATE('2000-01-01') AND
--   pet.id = person_pet.pet_id
--   ORDER BY pet.age, purchased_on;
-- PostgreSQL
SELECT pet.name, pet.breed, pet.age, pet.dead, person_pet.purchased_on
  FROM pet, person_pet
  WHERE purchased_on BETWEEN DATE '1990-01-01' AND DATE '2000-01-01' AND
  pet.id = person_pet.pet_id
  ORDER BY pet.age, purchased_on;

-- Query average age of pets per breed born between 1990-2000
-- SELECT pet.breed, avg(pet.age), pet.dead FROM pet, person_pet WHERE
--   purchased_on > DATE('1990-01-01') AND
--   purchased_on < DATE('2000-01-01') AND
--   pet.id = person_pet.pet_id
--   GROUP BY pet.breed;
-- PostgreSQL
SELECT pet.breed, avg(pet.age), pet.dead FROM pet, person_pet WHERE
  purchased_on BETWEEN DATE '1990-01-01' AND DATE '2000-01-01' AND
  pet.id = person_pet.pet_id
  GROUP BY pet.breed, pet.dead;
-- Cross check
-- SELECT pet.breed, avg(pet.age), pet.dead FROM pet, person_pet WHERE
--   pet.id = person_pet.pet_id
--   GROUP BY pet.breed;
-- PostgreSQL
SELECT pet.breed, avg(pet.age), pet.dead FROM pet, person_pet WHERE
  pet.id = person_pet.pet_id
  GROUP BY pet.breed, pet.dead;

-- Query pets per breed, purchased after 2015, GROUP BY breed
-- SELECT pet.breed, count(pet.breed), person_pet.purchased_on FROM pet, person_pet
--   WHERE pet.id = person_pet.pet_id AND
--   person_pet.purchased_on > DATE('2015-01-01')
--   GROUP BY pet.breed;
-- PostgreSQL
SELECT pet.breed, count(pet.breed), person_pet.purchased_on FROM pet, person_pet
  WHERE pet.id = person_pet.pet_id AND
  person_pet.purchased_on > DATE '2015-01-01'
  GROUP BY pet.breed, person_pet.purchased_on;
-- Same query but after 2014
-- SELECT pet.breed, count(pet.breed), person_pet.purchased_on FROM pet, person_pet
--   WHERE pet.id = person_pet.pet_id AND
--   person_pet.purchased_on > DATE('2014-01-01')
--   GROUP BY pet.breed;
-- PostgreSQL
SELECT pet.breed, count(pet.breed), person_pet.purchased_on FROM pet, person_pet
  WHERE pet.id = person_pet.pet_id AND
  person_pet.purchased_on > DATE '2014-01-01'
  GROUP BY pet.breed, person_pet.purchased_on;

-- Query pets per breed, purchased after 2010, GROUP BY breed, ORDER BY purchased_on
-- SELECT pet.breed, count(pet.breed), person_pet.purchased_on FROM pet, person_pet
--   WHERE pet.id = person_pet.pet_id AND
--   person_pet.purchased_on > DATE('2010-01-01')
--   GROUP BY pet.breed ORDER BY purchased_on;
-- PostgreSQL
SELECT pet.breed, count(pet.breed), person_pet.purchased_on FROM pet, person_pet
  WHERE pet.id = person_pet.pet_id AND
  person_pet.purchased_on > DATE '2010-01-01'
  GROUP BY pet.breed, person_pet.purchased_on ORDER BY person_pet.purchased_on;

-- Query number of pets purchased after 2015, GROUP BY person
-- SELECT person.first_name, count(person.first_name), purchased_on FROM person, person_pet
--   WHERE person.id = person_pet.person_id AND
--   person_pet.purchased_on > DATE('2015-01-01')
--   GROUP BY person.first_name;
-- PostgreSQL
SELECT person.first_name, count(person.first_name), person_pet.purchased_on FROM person, person_pet
  WHERE person.id = person_pet.person_id AND
  person_pet.purchased_on > DATE '2015-01-01'
  GROUP BY person.first_name, person_pet.purchased_on;
-- Same query but after 2014
-- SELECT person.first_name, count(person.first_name), purchased_on FROM person, person_pet
--   WHERE person.id = person_pet.person_id AND
--   person_pet.purchased_on > DATE('2014-01-01')
--   GROUP BY person.first_name;
-- PostgreSQL
SELECT person.first_name, count(person.first_name), person_pet.purchased_on FROM person, person_pet
  WHERE person.id = person_pet.person_id AND
  person_pet.purchased_on > DATE '2014-01-01'
  GROUP BY person.first_name, person_pet.purchased_on;

-- Query number of pets purchased after 2010, GROUP BY first_name AND ORDER BY purchased_on
-- SELECT person.first_name, count(person.first_name), purchased_on FROM person, person_pet
--   WHERE person.id = person_pet.person_id AND
--   person_pet.purchased_on > DATE('2010-01-01')
--   GROUP BY person.first_name ORDER BY person_pet.purchased_on;
-- PostgreSQL
SELECT person.first_name, count(person.first_name), person_pet.purchased_on FROM person, person_pet
  WHERE person.id = person_pet.person_id AND
  person_pet.purchased_on > DATE '2010-01-01'
  GROUP BY person.first_name, person_pet.purchased_on ORDER BY person_pet.purchased_on;
