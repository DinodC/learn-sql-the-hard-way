-- Exercise 20: Inner and outer joins

-- Use =
SELECT * FROM pet, person, person_pet
  WHERE person.id = person_pet.person_id AND
  pet.id = person_pet.pet_id AND
  person.id = 5;

-- -- Use JOIN
--  SELECT * FROM pet JOIN person, person_pet
--     ON person.id = person_pet.person_id AND
--     pet.id = person_pet.pet_id AND
--     person.id = 5;
-- PostgreSQL
SELECT * FROM pet
  JOIN person_pet ON pet.id = person_pet.pet_id
  JOIN person ON person.id = person_pet.person_id AND
  person.id = 5;

-- Use LEFT JOIN
-- SELECT * FROM pet LEFT JOIN person, person_pet
--   ON person.id = person_pet.person_id AND
--   pet.id = person_pet.pet_id AND
--   person.first_name = 'Dinosaurs';
-- PostgreSQL
SELECT * FROM pet
  LEFT JOIN person_pet ON pet.id = person_pet.pet_id
  LEFT JOIN person ON person.id = person_pet.person_id AND
  person.id = 5;


-- Use JOIN (by default inner JOIN)
 SELECT person.first_name, count(person.first_name) FROM person JOIN person_pet ON person.id = person_pet.person_id GROUP BY person.first_name;
-- Count
 SELECT count(person.first_name) FROM person JOIN person_pet ON person.id = person_pet.person_id;

-- Use INNER JOIN
 SELECT person.first_name, count(person.first_name) FROM person inner JOIN person_pet ON person.id = person_pet.person_id GROUP BY person.first_name;
-- Count
 SELECT count(person.first_name) FROM person INNER JOIN person_pet ON person.id = person_pet.person_id;

-- Use LEFT JOIN
 SELECT person.first_name, count(person.first_name) FROM person LEFT JOIN person_pet ON person.id = person_pet.person_id GROUP BY person.first_name;
-- Count
 SELECT count(person.first_name) FROM person LEFT JOIN person_pet ON person.id = person_pet.person_id;

-- Use CROSS JOIN
 SELECT count(*) FROM person;
 SELECT count(*) FROM person_pet;
 SELECT count(*) FROM person CROSS JOIN person_pet;
