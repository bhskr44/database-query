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
	id integer,
	full_name varchar,
	age integer
)



-- Create a table named species with the following columns:
-- id: integer (set it as autoincremented PRIMARY KEY)
-- name: string


CREATE TABLE species (
	id integer,
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

-- Create a table named vets with the following columns:
-- id: integer (set it as autoincremented PRIMARY KEY)
-- name: string
-- age: integer
-- date_of_graduation: date 
CREATE TABLE vets (
    id SERIAL PRIMARY KEY,
    name varchar(255),
    age INT,
    date_of_graduation DATE
);
--  Create a "join table" called specializations to handle this relationship.

CREATE TABLE specializations (
    id SERIAL PRIMARY KEY,
    species_id INT REFERENCES species(id),
    vet_id INT REFERENCES vets(id)
);

-- Create a "join table" called visits to handle this relationship, it should also keep track of the date of the visit.
CREATE TABLE visits (
    id SERIAL PRIMARY KEY,
    animal_id INT REFERENCES animals(id),
    vet_id INT REFERENCES vets(id),
    visit_date DATE
);

-- Insert the following data for vets:

-- Vet William Tatcher is 45 years old and graduated Apr 23rd, 2000.

INSERT INTO vets (name, age, date_of_graduation)	VALUES ('William Tatcher', 45, '2000-04-23');

-- Vet Maisy Smith is 26 years old and graduated Jan 17th, 2019.

INSERT INTO vets (name, age, date_of_graduation)	VALUES ('Maisy Smith', 26, '2019-01-17');

-- Vet Stephanie Mendez is 64 years old and graduated May 4th, 1981.

INSERT INTO vets (name, age, date_of_graduation)	VALUES ('Stephanie Mendez', 64, '1981-05-04');

-- Vet Jack Harkness is 38 years old and graduated Jun 8th, 2008.

INSERT INTO vets (name, age, date_of_graduation)	VALUES ('Jack Harkness', 38, '2008-06-08');








