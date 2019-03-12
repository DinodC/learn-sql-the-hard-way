-- Exercise 5: Selecting data

-- Select all the columns of person
SELECT * FROM person;

-- Select columns name and age of pet
SELECT name, age FROM pet;

-- Select columns name and age of pet who are not dead
SELECT name, age FROM pet WHERE dead = 0;

-- Select all columns of row who is not named 'Dino'
SELECT * FROM person WHERE first_name != 'Dino';

-- Select all columns from pet who has age greater than 10
SELECT * FROM pet WHERE age > 10;

-- Select all columns from person who is not older than 35
SELECT * FROM person WHERE age < 35;

-- Select all columns from person who is older than 35
SELECT * FROM person WHERE age > 35;

-- Select all columns from person who is not named Dino and older than 18
SELECT * FROM person WHERE first_name != 'Dino' AND AGE > 18;

-- Select all columns from person who is not Anton and not older than 60
SELECT * FROM person WHERE first_name != 'Anton' AND AGE <= 60;

-- Select all columns from pet who is not a mouse, not dead, and older than 10
SELECT * FROM pet WHERE breed != 'Mouse' AND dead != 1 OR age > 10;
