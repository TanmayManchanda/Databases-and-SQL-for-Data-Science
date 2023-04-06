-- Retrieve all records with all columns from the “FilmLocations” table.

select * from FILM_LOCATIONS;

-- Retrieve the names of all films with director names and writer names.

select Title, director, writer from FILM_LOCATIONS;

-- Retrieve the names of all films released in the 21st century and onwards (release years after 2001 including 2001), along with filming locations and release years.

select Title, locations, release_year from FILM_LOCATIONS where release_year >= 2001;

-- Retrieve the fun facts and filming locations of all films.

select fun_facts, locations from FILM_LOCATIONS;

-- Retrieve the names of all films released in the 20th century and before (release years before 2000 including 2000) that, along with filming locations and release years.

select title, locations, release_year from FILM_LOCATIONS where release_year <= 2000;

-- Retrieve the names, production company names, filming locations, and release years of the films which are not written by James Cameron.

select title, production_company, locations, release_year from FILM_LOCATIONS where writer <> 'James Cameron';