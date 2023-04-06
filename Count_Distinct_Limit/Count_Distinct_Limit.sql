-- Retrieve the number of rows from the “FilmLocations” table.

select count(*) from Film_Locations;

-- Retrieve the number of locations of the films which are written by James Cameron.

select count(locations) from FILM_LOCATIONS where writer = 'James Cameron';

-- Retrieve the number of locations of the films which are directed by Woody Allen.

select count(locations) from FILM_LOCATIONS where director = 'Woody Allen';

-- Retrieve the number of films shot at Russian Hill.

select count (*) from Film_Locations where Locations = 'Russian Hill';

-- Retrieve the name of all films without any repeated titles.

--Retrieve the number of rows having a release year older than 1950 from the “FilmLocations” table.
select count(*) from FILM_LOCATIONS where release_year < 1950;

-- Retrieve the name of all films without any repeated titles.

select distinct title from FILM_LOCATIONS;

-- Retrieve the number of release years of the films distinctly, produced by Warner Bros. Pictures.

select count (distinct release_year) from Film_locations where production_company = 'Warner Bros. Pictures';

-- Retrieve the name of all unique films released in the 21st century and onwards, along with their release years.

select distinct title, release_year from FILM_LOCATIONS where release_year >= 2001;

-- Retrieve the names of all the directors and their distinct films shot at City Hall.

select distinct title, director from FILM_LOCATIONS where locations = 'City Hall';

-- Retrieve the number of distributors distinctly who distributed films acted by Clint Eastwood as 1st actor.

select count(distinct distributor) from FILM_LOCATIONS where ACTOR_1 = 'Clint Eastwood';

-- Retrieve the first 25 rows from the “FilmLocations” table.

select * from FILM_LOCATIONS limit 25;

-- Retrieve the first 15 rows from the “FilmLocations” table starting from row 11.

select * from FILM_LOCATIONS LIMIT 15 OFFSET 10;

-- Retrieve the name of first 50 films distinctly.

select distinct title from FILM_LOCATIONS LIMIT 50; 

-- Retrieve first 10 film names distinctly released in 2015.

select distinct title from FILM_LOCATIONS where release_year = 2015 LIMIT 10;

-- Retrieve the next 3 film names distinctly after first 5 films released in 2015.

select distinct title from FILM_LOCATIONS where release_year = 2015 LIMIT 3 OFFSET 5;