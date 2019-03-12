-- Exercise 9: Updating data

-- Rename dead pet(s) to 'DECEASED'
UPDATE pet SET name = 'DECEASED'
  WHERE dead = 1;

-- Verify that dead pet(s) are renamed 'DECEASED'
SELECT * FROM pet;
