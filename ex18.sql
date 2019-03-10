-- Exercise 18: Dates, times AND order by

-- avg
SELECT avg(age) FROM person;

SELECT avg(age) FROM pet;

SELECT breed, dead, avg(age) FROM pet GROUP BY breed, dead;

SELECT breed, dead, avg(age) FROM pet GROUP BY dead, breed;

SELECT breed, avg(age) FROM pet GROUP BY breed ORDER BY avg(age);

SELECT breed, dead, avg(age) FROM pet GROUP BY breed, dead ORDER BY avg(age);

-- sum
SELECT SUM(age) FROM person;

SELECT SUM(age) FROM pet;

SELECT breed, SUM(dead), SUM(age) FROM pet WHERE dead = 1 GROUP BY breed, dead;

-- min AND max
SELECT min(age), max(age) FROM person;

SELECT min(age), max(age) FROM pet;

SELECT breed, dead, min(age), max(age) FROM pet
  WHERE age > 0
  GROUP BY breed, dead;

-- Query average age AND number of dead by breed AND dead
SELECT breed, avg(age), dead, count(dead) FROM pet GROUP BY breed, dead;
-- Same query but consider only the owned pets
SELECT pet.breed, avg(pet.age), pet.dead, count(pet.dead) FROM pet, person, person_pet
  WHERE pet.id = person_pet.pet_id AND
  person.id = person_pet.person_id
  GROUP BY breed, dead;

-- Query average, min AND max age AND number of dead by breed AND dead
SELECT breed, avg(age), min(age), max(age), dead, count(dead) FROM pet WHERE age > 0 GROUP BY breed, dead;
-- Same query but consider only the owned pets
SELECT pet.breed, avg(pet.age), min(pet.age), max(pet.age), pet.dead, count(pet.dead) FROM pet, person, person_pet
  WHERE pet.age > 0 AND
  pet.id = person_pet.pet_id AND
  person.id = person_pet.person_id
  GROUP BY breed, dead;
