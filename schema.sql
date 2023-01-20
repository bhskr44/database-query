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