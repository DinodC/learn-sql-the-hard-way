-- Exercise  8: Deleting using other tables

-- Delete Dino's dead pet(s) in pet
DELETE FROM pet WHERE pet.id IN (
  SELECT pet.id
  FROM pet, person, person_pet
  WHERE pet.dead = 1 AND
  pet.id = person_pet.pet_id AND
  person.id = person_pet.person_id AND
  person.first_name = 'Dino'
);

-- Verify that Dino's dead pet(s) are deleted in pet
SELECT * FROM pet;
-- What about relations in person_pet?
SELECT * FROM person_pet;

-- Delete Dino's dead pet(s) in person_pet
DELETE FROM person_pet
  WHERE pet_id NOT IN (
    SELECT id FROM pet
  );

-- Verify that Dino's dead pet(s) are deleted in person_pet
SELECT * FROM person_pet;
