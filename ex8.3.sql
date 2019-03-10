-- Exercise  8: Deleting using other tables

-- Delete dead pet(s) in person_pet
DELETE FROM person_pet WHERE person_pet.pet_id IN (
  SELECT DISTINCT person_pet.pet_id
  FROM person_pet, person, pet WHERE
  pet.dead = 1 AND
  pet.id = person_pet.pet_id
);

-- Verify that dead pet(s) are deleted in person_pet
SELECT * FROM person_pet;
