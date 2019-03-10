-- Exercise 9: Updating data

-- Update back 'Dino'
UPDATE person SET first_name = 'Dino'
  WHERE id = 0;

-- Verify that 'Dino' is updated back
SELECT * FROM person;
