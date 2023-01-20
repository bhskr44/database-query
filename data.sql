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


-- Insert the following data for vets:

-- Vet William Tatcher is 45 years old and graduated Apr 23rd, 2000.

INSERT INTO vets (name, age, date_of_graduation)	VALUES ('William Tatcher', 45, '2000-04-23');

-- Vet Maisy Smith is 26 years old and graduated Jan 17th, 2019.

INSERT INTO vets (name, age, date_of_graduation)	VALUES ('Maisy Smith', 26, '2019-01-17');

-- Vet Stephanie Mendez is 64 years old and graduated May 4th, 1981.

INSERT INTO vets (name, age, date_of_graduation)	VALUES ('Stephanie Mendez', 64, '1981-05-04');

-- Vet Jack Harkness is 38 years old and graduated Jun 8th, 2008.

INSERT INTO vets (name, age, date_of_graduation)	VALUES ('Jack Harkness', 38, '2008-06-08');


-- Insert the following data for specialties:
-- Vet William Tatcher is specialized in Pokemon.
-- Vet Stephanie Mendez is specialized in Digimon and Pokemon.
-- Vet Jack Harkness is specialized in Digimon.

INSERT INTO specializations (species_id, vet_id) VALUES (1, 1);
INSERT INTO specializations (species_id, vet_id) VALUES (1, 3);
INSERT INTO specializations (species_id, vet_id) VALUES (2, 3);
INSERT INTO specializations (species_id, vet_id) VALUES (2, 2);

-- Insert the following data for visits:
-- Agumon visited William Tatcher on May 24th, 2020.
-- Agumon visited Stephanie Mendez on Jul 22th, 2020.
-- Gabumon visited Jack Harkness on Feb 2nd, 2021.
-- Pikachu visited Maisy Smith on Jan 5th, 2020.
-- Pikachu visited Maisy Smith on Mar 8th, 2020.
-- Pikachu visited Maisy Smith on May 14th, 2020.
-- Devimon visited Stephanie Mendez on May 4th, 2021.
-- Charmander visited Jack Harkness on Feb 24th, 2021.
-- Plantmon visited Maisy Smith on Dec 21st, 2019.
-- Plantmon visited William Tatcher on Aug 10th, 2020.
-- Plantmon visited Maisy Smith on Apr 7th, 2021.
-- Squirtle visited Stephanie Mendez on Sep 29th, 2019.
-- Angemon visited Jack Harkness on Oct 3rd, 2020.
-- Angemon visited Jack Harkness on Nov 4th, 2020.
-- Boarmon visited Maisy Smith on Jan 24th, 2019.
-- Boarmon visited Maisy Smith on May 15th, 2019.
-- Boarmon visited Maisy Smith on Feb 27th, 2020.
-- Boarmon visited Maisy Smith on Aug 3rd, 2020.
-- Blossom visited Stephanie Mendez on May 24th, 2020.
-- Blossom visited William Tatcher on Jan 11th, 2021.

INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (1, 1, '2020-05-24');
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (1, 3, '2020-07-22');
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (2, 4, '2021-02-02');
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (3, 2, '2020-01-05');
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (3, 2, '2020-03-08');
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (3, 2, '2020-05-14');
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (4, 3, '2021-05-04');
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (5, 4, '2021-02-24');
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (6, 2, '2019-12-21');
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (6, 1, '2020-08-10');
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (6, 2, '2021-04-07');
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (7, 3, '2019-09-29');
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (8, 4, '2020-10-03');
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (8, 4, '2020-11-04');
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (9, 2, '2019-01-24');
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (9, 2, '2019-05-15');
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (9, 2, '2020-02-27');
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (9, 2, '2020-08-03');
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (10, 3, '2020-05-24');
INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES (10, 1, '2021-01-11');


-- Write queries to answer the following:
-- Who was the last animal seen by William Tatcher?

SELECT * FROM animals WHERE id = (SELECT animal_id FROM visits WHERE vet_id = 1 ORDER BY date_of_visit DESC LIMIT 1);

-- How many different animals did Stephanie Mendez see?

SELECT COUNT(DISTINCT animal_id) FROM visits WHERE vet_id = 3;

-- List all vets and their specialties, including vets with no specialties.

SELECT vets.name, species.name FROM vets LEFT JOIN specializations ON vets.id = specializations.vet_id LEFT JOIN species ON specializations.species_id = species.id;

-- List all animals that visited Stephanie Mendez between April 1st and August 30th, 2020.

SELECT animals.name FROM animals JOIN visits ON animals.id = visits.animal_id WHERE visits.vet_id = 3 AND visits.date_of_visit BETWEEN '2020-04-01' AND '2020-08-30';

-- What animal has the most visits to vets?

select animal_id, count(*) from visits group by animal_id order by count(animal_id) desc limit 1

-- Who was Maisy Smith's first visit?

SELECT vets.name FROM vets JOIN visits ON vets.id = visits.vet_id WHERE visits.animal_id = 2 ORDER BY visits.date_of_visit LIMIT 1;

-- Details for most recent visit: animal information, vet information, and date of visit.

SELECT animals.name, vets.name, visits.date_of_visit FROM animals JOIN visits ON animals.id = visits.animal_id JOIN vets ON visits.vet_id = vets.id ORDER BY visits.date_of_visit DESC LIMIT 1;

-- How many visits were with a vet that did not specialize in that animal's species?

SELECT COUNT(visits.animal_id) FROM visits JOIN animals ON visits.animal_id = animals.id JOIN vets ON visits.vet_id = vets.id LEFT JOIN specializations ON vets.id = specializations.vet_id LEFT JOIN species ON specializations.species_id = species.id WHERE species.id != animals.species_id;

-- What specialty should Maisy Smith consider getting? Look for the species she gets the most.

select species_id from animals where id = (select animal_id from visits where vet_id = 2 group by animal_id order by count(animal_id) desc limit 1); 



	
