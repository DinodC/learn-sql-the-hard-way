-- Exercise 9: Updating data

-- Update 'Dino' in person
UPDATE person SET first_name = 'Miko'
  WHERE first_name = 'Dino';

-- Verify that 'Dino' is updated in person
SELECT * FROM person;

-- Update 'Durga' in pet
UPDATE pet SET name = 'Simba'
  WHERE name = 'Durga';

-- Verify that 'Durga' is updated in pet
SELECT * FROM pet;
