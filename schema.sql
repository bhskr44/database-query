/* Database schema to keep the structure of entire database. */

Create table animals (
	id integer,
	name varchar,
	date_of_birth date,
	escape_attempts integer,
	neutered BOOLEAN,
	weight_kg decimal
)

ALTER TABLE animals
ADD species Text;


-- Create a table named owners with the following columns:
-- id: integer (set it as autoincremented PRIMARY KEY)
-- full_name: string
-- age: integer

CREATE TABLE owners (
	 id SERIAL PRIMARY KEY,
	full_name varchar,
	age integer
)



-- Create a table named species with the following columns:
-- id: integer (set it as autoincremented PRIMARY KEY)
-- name: string


CREATE TABLE species (
 	id SERIAL PRIMARY KEY,
	name varchar
)


-- Modify animals table:
-- Make sure that id is set as autoincremented PRIMARY KEY
-- Remove column species
-- Add column species_id which is a foreign key referencing species table
-- Add column owner_id which is a foreign key referencing the owners table

CREATE TABLE new_animals (
    id SERIAL PRIMARY KEY,
   name varchar,
	date_of_birth date,
	escape_attempts integer,
	neutered BOOLEAN,
	weight_kg decimal,
    species_id INT REFERENCES species(id),
    owner_id INT REFERENCES owners(id)
);

INSERT INTO new_animals (name, date_of_birth, escape_attempts, neutered, weight_kg, species_id, owner_id)
SELECT name, date_of_birth, escape_attempts, neutered, weight_kg, species_id, owner_id
FROM animals;

DROP TABLE animals;

ALTER TABLE new_animals RENAME TO animals;

ALTER TABLE owners ADD COLUMN email VARCHAR(120);

