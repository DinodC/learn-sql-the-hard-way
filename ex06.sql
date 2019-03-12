-- Exercise 6: Join many tables

-- Find Dino's pet(s) with normal join with equality
SELECT pet.id, pet.name, pet.age, pet.dead
  FROM pet, person_pet, person
  WHERE
    pet.id = person_pet.pet_id AND
    person_pet.person_id = person.id AND
    person.first_name = 'Dino';

-- Find Dino's pet(s) using a sub-select
SELECT pet.id, pet.name, pet.age, pet.dead
  FROM pet
  WHERE pet.id IN
  (
    SELECT pet_id
      FROM person_pet, person
      WHERE
        person_pet.person_id = person.id AND
        person.first_name = 'Dino'
  );

-- Find Cynthia's pet(s)
SELECT pet.id, pet.name, pet.age
  FROM pet, person, person_pet
  WHERE
  person.first_name = 'Cynthia' AND
  person.id = person_pet.person_id AND
  pet.id = person_pet.pet_id;

SELECT pet.id, pet.name, pet.age
  FROM pet
  WHERE pet.id IN
  (
    SELECT pet_id
      FROM person_pet, person
      WHERE person.first_name = 'Cynthia' AND
      person.id = person_pet.person_id
  );

-- Find Anton's pet(s)
SELECT pet.id, pet.name, pet.age
  FROM pet, person, person_pet
  WHERE
    person.first_name = 'Anton' AND
    person.id = person_pet.person_id AND
    pet.id = person_pet.pet_id;

SELECT pet.id, pet.name, pet.age
  FROM pet
  WHERE pet.id IN
  (
    SELECT pet_id FROM person_pet, person
    WHERE person.first_name = 'Anton' AND
    person.id = person_pet.person_id
  );

-- Use person.id
SELECT pet.id, pet.name, pet.age
  FROM pet, person, person_pet
  WHERE
    person.id = 0 AND
    person.id = person_pet.person_id AND
    pet.id = person_pet.pet_id;

SELECT pet.id, pet.name, pet.age
  FROM pet
  WHERE pet.id IN
  (
    SELECT pet_id FROM person_pet, person
    WHERE person.id = 0 AND
    person.id = person_pet.person_id
  );
