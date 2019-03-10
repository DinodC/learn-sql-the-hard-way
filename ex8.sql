-- Exercise  8: Deleting using other tables

-- Delete Dino's pet(s) in pet
DELETE FROM pet WHERE id IN (
  SELECT pet.id
  FROM pet, person, person_pet
  WHERE
  person.first_name = 'Dino' AND
  person.id = person_pet.person_id AND
  pet.id = person_pet.pet_id
);

-- Verify that Dino's pet(s) are deleted from pet
SELECT * FROM pet;
-- What about relations in person_pet?
SELECT * FROM person_pet;

-- Delete Dino's pet(s) in person_pet
DELETE FROM person_pet
  WHERE pet_id NOT IN (
    SELECT id FROM pet
  );

-- Verify that Dino's pet(s) are deleted from person_pet
SELECT * FROM person_pet;
