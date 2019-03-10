-- Exercise 16: Group with relations

-- Query to get a related table
SELECT * FROM person, person_pet, pet
  WHERE person.id = person_pet.person_id AND
  pet.id = person_pet.pet_id;
-- Same query but LIMIT output to 10 rows
SELECT * FROM person, person_pet, pet
  WHERE person.id = person_pet.person_id AND
  pet.id = person_pet.pet_id LIMIT 10;

-- Add a basic count AND append by GROUP BY
SELECT person.first_name, pet.breed, pet.dead, count(dead)
  FROM person, person_pet, pet
  WHERE person.id = person_pet.person_id AND
  pet.id = person_pet.pet_id
  GROUP BY person.first_name, pet.breed, pet.dead;

-- Drop the person.first_name since it's not summarized
SELECT pet.breed, pet.dead, count(dead)
  FROM person, person_pet, pet
  WHERE person.id = person_pet.person_id AND
  pet.id = person_pet.pet_id
  GROUP BY pet.breed, pet.dead;

-- Compare the counts to without the person_pet relation
SELECT breed, dead, count(dead)
  FROM pet
  GROUP BY breed, dead;

-- Query dead AND alive pets note that person.first_name can be dropped
-- SELECT person.first_name, pet.dead , count(pet.dead) FROM person, pet GROUP BY pet.dead;
-- PostgreSQL
SELECT person.first_name, pet.dead , count(pet.dead) FROM person, pet GROUP BY person.first_name, pet.dead;

-- Query number of pets per breed note that person.first_name can be dropped
-- SELECT person.first_name, pet.breed, count(pet.breed) FROM person, pet GROUP BY pet.breed;
-- PostgreSQL
SELECT person.first_name, pet.breed, count(pet.breed) FROM person, pet GROUP BY person.first_name, pet.breed;

-- Query pets in person_pet by purchased_on
-- SELECT pet.name, person_pet.pet_id, person_pet.purchased_on FROM pet, person_pet GROUP BY person_pet.purchased_on;
-- PostgreSQL
SELECT pet.name, person_pet.pet_id, person_pet.purchased_on FROM pet, person_pet GROUP BY pet.name, person_pet.pet_id, person_pet.purchased_on;

-- Query dead or alive owned pets per breed
-- SELECT person.first_name, pet.name, pet.breed, pet.dead, count(dead) FROM person, pet, person_pet
--   WHERE person.id = person_pet.person_id AND
--   pet.id = person_pet.pet_id
--   GROUP BY pet.dead, pet.breed;
-- PostgreSQL
SELECT person.first_name, pet.name, pet.breed, pet.dead, count(dead) FROM person, pet, person_pet
  WHERE person.id = person_pet.person_id AND
  pet.id = person_pet.pet_id
  GROUP BY person.first_name, pet.name, pet.breed, pet.dead;
-- Cross-check
SELECT breed, dead, count(dead) FROM pet GROUP BY dead, breed;

-- Query breeds of owned pets per dead or alive
-- SELECT person.first_name, pet.name, pet.breed, pet.dead, count(dead) FROM person, pet, person_pet
--   WHERE person.id = person_pet.person_id AND
--   pet.id = person_pet.pet_id
--   GROUP BY pet.breed, pet.dead;
-- PostgreSQL
SELECT person.first_name, pet.name, pet.breed, pet.dead, count(dead) FROM person, pet, person_pet
  WHERE person.id = person_pet.person_id AND
  pet.id = person_pet.pet_id
  GROUP BY person.first_name, pet.name, pet.breed, pet.dead;
-- -- Cross-check
SELECT breed, dead, count(dead) FROM pet GROUP BY breed, dead;

-- Query owned pets who have purchased_on > 2008
-- SELECT pet.name, person_pet.pet_id, pet.breed, person_pet.purchased_on FROM pet, person, person_pet
--   WHERE person.id = person_pet.person_id AND
--   pet.id = person_pet.pet_id AND
--   person_pet.purchased_on > '2008-01-01'
--   GROUP BY person_pet.purchased_on;
-- PostgreSQL
SELECT pet.name, person_pet.pet_id, pet.breed, person_pet.purchased_on FROM pet, person, person_pet
  WHERE person.id = person_pet.person_id AND
  pet.id = person_pet.pet_id AND
  person_pet.purchased_on > '2008-01-01'
  GROUP BY pet.name, person_pet.pet_id, pet.breed, person_pet.purchased_on;
-- Cross-check
SELECT pet_id, purchased_on FROM person_pet WHERE purchased_on > '2008-01-01' GROUP BY pet_id, purchased_on;
