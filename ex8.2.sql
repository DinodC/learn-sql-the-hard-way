-- Exercise  8: Deleting using other tables

-- Delete people who have dead pets
DELETE FROM person WHERE person.id IN (
  SELECT DISTINCT person.id
  FROM person, pet, person_pet
  WHERE pet.dead = 1 AND
  pet.id = person_pet.pet_id AND
  person.id = person_pet.person_id
);

-- Verify that people who have dead pets are deleted in person
SELECT * FROM person;
