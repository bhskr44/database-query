/* Populate database with sample data. */

INSERT INTO public.animals(id, name, date_of_birth, escape_attempts, neutered, weight_kg)
	VALUES  
    (1,'Agumon', '02/03/2020', 0, true, 10.23),
	(2,'Gabumon', '11/15/2018', 2, true, 8),
	(3,'Pikachu', '01/07/2021', 1, false, 15.04),
	(4,'Devimon', '05/12/2017', 5, true, 11),

	(5,'Charmander', '02/08/2020', 0, false, 11),
	(6,'Plantmon', '11/15/2021', 2, true, 5.7),
	(7,'Squirtle', '04/02/1993', 3, false, 12.13),
	(8,'Angemon', '06/12/2005', 1, true, 45),
	(9,'Boarmon', '06/07/2005', 7, true, 20.4),
	(10,'Blossom', '10/13/1998', 3, true, 17),
	(11,'Ditto', '05/14/2022', 4, true, 22);

-- 	Insert the following data into the owners table:
-- Sam Smith 34 years old.
-- Jennifer Orwell 19 years old.
-- Bob 45 years old.
-- Melody Pond 77 years old.
-- Dean Winchester 14 years old.
-- Jodie Whittaker 38 years old.

INSERT INTO public.owners(id, full_name, age)
	VALUES  
	(1,'Sam Smith', 34),
	(2,'Jennifer Orwell', 19),
	(3,'Bob', 45),
	(4,'Melody Pond', 77),
	(5,'Dean Winchester', 14),
	(6,'Jodie Whittaker', 38);


-- 	Insert the following data into the species table:
-- Pokemon
-- Digimon

INSERT INTO public.species(id, name)
	VALUES  
	(1,'Pokemon'),
	(2,'Digimon');

-- 	Modify your inserted animals so it includes the species_id value:
-- If the name ends in "mon" it will be Digimon
-- All other animals are Pokemon

UPDATE animals
SET species_id = 1
WHERE name NOT LIKE '%mon';


UPDATE animals
SET species_id = 2
WHERE name LIKE '%mon';


-- Modify your inserted animals to include owner information (owner_id):
-- Sam Smith owns Agumon.
UPDATE animals
SET owner_id = 1
WHERE name = 'Agumon';
-- Jennifer Orwell owns Gabumon and Pikachu.
UPDATE animals
SET owner_id = 2
WHERE name = 'Gabumon' or name = 'Pikachu';

-- Bob owns Devimon and Plantmon.

UPDATE animals
SET owner_id = 3
WHERE name = 'Devimon' or name = 'Plantmon';
-- Melody Pond owns Charmander, Squirtle, and Blossom.

UPDATE animals
SET owner_id = 4
WHERE name = 'Charmander' or name = 'Squirtle' or name = 'Blossom';

-- Dean Winchester owns Angemon and Boarmon.

UPDATE animals
SET owner_id = 5
WHERE name = 'Angemon' or name = 'Boarmon';





	
INSERT INTO visits (animal_id, vet_id, date_of_visit) SELECT * FROM (SELECT id FROM animals) animal_ids, (SELECT id FROM vets) vets_ids, generate_series('1980-01-01'::timestamp, '2021-01-01', '4 hours') visit_timestamp;
insert into owners (full_name, email) select 'Owner ' || generate_series(1,2500000), 'owner_' || generate_series(1,2500000) || '@mail.com';