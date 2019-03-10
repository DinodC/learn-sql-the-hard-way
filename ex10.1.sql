-- Exercise 10: Updating complex data

SELECT * FROM pet;

-- Update name of Dino's pet(s) who are dead
UPDATE pet SET name = 'Dino''s dead pet' WHERE id IN (
  SELECT pet.id FROM pet, person, person_pet
  WHERE pet.dead = 1 AND
  pet.id = person_pet.pet_id AND
  person.id = person_pet.person_id AND
  person.first_name = 'Dino'
);

-- Verify that Dino's pet(s) who are dead are updated
SELECT * FROM pet;
