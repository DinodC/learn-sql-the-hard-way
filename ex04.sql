-- Exercise 4: Insert referential data

-- Dino's 'relation' to pets
INSERT INTO person_pet (person_id, pet_id) VALUES (0, 0);
INSERT INTO person_pet VALUES (0, 1);
INSERT INTO person_pet VALUES (0, 2);
INSERT INTO person_pet VALUES (0, 3);

-- Anton's 'relation' to pets
INSERT INTO person_pet (person_id, pet_id) VALUES (1, 3);
INSERT INTO person_pet (person_id, pet_id) VALUES (1, 5);

-- Cynthia's 'relation' to pets
INSERT INTO person_pet (person_id, pet_id) VALUES (2, 4);
