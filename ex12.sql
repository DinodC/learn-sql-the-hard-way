-- Exercise 12: Destroying and altering tables

-- Only drop table if it exists
DROP TABLE IF EXISTS person;

-- Create table again
CREATE TABLE person (
  id INTEGER PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  age INTEGER
);

-- Rename table to peoples
ALTER TABLE person rename to peoples;

-- Add a new column to peoples
ALTER TABLE peoples add column relation TEXT;

-- Rename peoples back to person
ALTER TABLE peoples rename to person;

-- -- Check
-- .schema person

-- Check in PostgreSQL
\d

-- Drop table
DROP TABLE person;
