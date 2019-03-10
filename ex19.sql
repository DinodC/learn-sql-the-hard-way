-- Exercise 19: Logic and math functions

SELECT sum(age) / count(*) AS average FROM pet;

SELECT avg(age) FROM pet;

SELECT avg(length(name)) AS anl FROM pet;

SELECT round(avg(age)) AS average FROM pet;

SELECT random();

-- SELECT abs(random() % 20);
-- PostgreSQL
SELECT mod(CAST (random() AS INTEGER), 20);

-- UPDATE pet SET age = abs(random() % 20) WHERE dead = 0;
-- PostgreSQL
UPDATE pet SET age = abs(mod(CAST (random() AS INTEGER),20)) WHERE dead = 0;

SELECT round(avg(age)) AS average FROM pet;

-- UPDATE pet SET age = abs(random() % 50) WHERE dead = 0;
-- PostgreSQL
UPDATE pet SET age = abs(mod(CAST (random() AS INTEGER),50)) WHERE dead = 0;

SELECT round(avg(age)) AS average FROM pet;

-- glob
-- SELECT * FROM person WHERE glob('*au*', first_name);
-- PostgreSQL doesn't have glob
SELECT * FROM person WHERE first_name LIKE '%au%';

-- SELECT * FROM person WHERE glob('*ou*', first_name);
-- PostgreSQL doesn't have glob
SELECT * FROM person WHERE first_name LIKE '%ou%';

-- substr and ||
SELECT first_name, last_name, substr(first_name, 0, 2) || substr(last_name, 0, 2) AS initial FROM person;

-- lower and upper
SELECT first_name, lower(first_name), upper(first_name) FROM person;

-- replace
SELECT replace(breed, 'Tiger', 'Lion') FROM pet;
