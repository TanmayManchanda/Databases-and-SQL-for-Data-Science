-- Drop the PETRESCUE table in case it exists
drop table PETRESCUE;
-- Create the PETRESCUE table 
create table PETRESCUE (
	ID INTEGER NOT NULL,
	ANIMAL VARCHAR(20),
	QUANTITY INTEGER,
	COST DECIMAL(6,2),
	RESCUEDATE DATE,
	PRIMARY KEY (ID)
	);
-- Insert sample data into PETRESCUE table
insert into PETRESCUE values 
	(1,'Cat',9,450.09,'2018-05-29'),
	(2,'Dog',3,666.66,'2018-06-01'),
	(3,'Dog',1,100.00,'2018-06-04'),
	(4,'Parrot',2,50.00,'2018-06-04'),
	(5,'Dog',1,75.75,'2018-06-10'),
	(6,'Hamster',6,60.60,'2018-06-11'),
	(7,'Cat',1,44.44,'2018-06-11'),
	(8,'Goldfish',24,48.48,'2018-06-14'),
	(9,'Dog',2,222.22,'2018-06-15')
	
;

-- Query A1: Enter a function that calculates the total cost of all animal rescues in the PETRESCUE table.

select sum(cost) from petrescue;

-- Query A2: Enter a function that displays the total cost of all animal rescues in the PETRESCUE table in a column called SUM_OF_COST.

select sum(cost) as sum_of_cost from petrescue;

-- Query A3: Enter a function that displays the maximum quantity of animals rescued.

select max (quantity) from petrescue

-- Query A4: Enter a function that displays the average cost of animals rescued.

select avg(cost) from petrescue;

select avg(cost/quantity) from petrescue where animal = 'Dog';

-- Query B1: Enter a function that displays the rounded cost of each rescue.

select round(cost) from petrescue;

-- Query B2: Enter a function that displays the length of each animal name.

select length(animal) from petrescue;

-- Query B3: Enter a function that displays the animal name in each rescue in uppercase.

select upper(animal) from petrescue;

-- Query B4: Enter a function that displays the animal name in each rescue in uppercase without duplications.

select distinct(upper(animal)) from petrescue;

-- Query B5: Enter a query that displays all the columns from the PETRESCUE table, where the animal(s) rescued are cats. Use cat in lower case in the query.

select * from petrescue where lcase(animal) = 'cat';

-- Query C1: Enter a function that displays the day of the month when cats have been rescued.

select day (rescuedate) from petrescue where animal = 'cat';

-- Query C2: Enter a function that displays the number of rescues on the 5th month.

select sum(quantity) from petrescue where where month(rescuedate) = '05';

-- Query C3: Enter a function that displays the number of rescues on the 14th day of the month.

select sum(quantity) from petrescue where day(rescuedate) = '14'

-- Query C4: Animals rescued should see the vet within three days of arrivals. Enter a function that displays the third day from each rescue.\

select (rescuedate + 3 days) from petrescue;
-- days or just + 3

-- Query C5: Enter a function that displays the length of time the animals have been rescued; the difference between today’s date and the recue date.

select (current date - rescuedate) from petrescue;

