-- Exercise 10: Updating complex data

SELECT * FROM pet;

-- Update Dino's pet(s) name
UPDATE pet SET name = 'Dino''s pet' WHERE id IN (
  SELECT pet.id FROM pet, person, person_pet
  WHERE pet.id = person_pet.pet_id AND
  person.id = person_pet.person_id AND
  person.first_name = 'Dino'
);

-- Verify that Dino's pet(s) are updated
SELECT * FROM pet;
