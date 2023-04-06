-- Note: In every update, run only the selected columns and don't run the insert commnad more than once otherwise data will get duplicated and would hence need further cleansing. 
-- use DISTINCT if there's any duplication

-- Create table COLUMNS
CREATE TABLE dataset(
	ins_id int,
	lastname varchar(255),
	firstname varchar(255),
	city varchar(255),
	country varchar(255)
);

-- DISPLAY THE TABLE
SELECT * FROM DATASET;

-- insert data

insert into dataset(ins_id, lastname, firstname, city, country)
values (1, 'Ahuja','Rav','Toronto','CA');

-- check updated dataset
select * from dataset

insert into dataset(ins_id, lastname, firstname, city, country)
values (2, 'Chong','Raul','Toronto','CA'), (3,'Vasudevan','Hima','Chicago','US'),(4,'Saha','Sandip','Edmonton','CA');


-- check updated dataset
select * from dataset

-- Insert two new instructor records into the “Instructor” table. First record with id 5 for John Doe who lives in Sydney, AU. Second record with id 6 for Jane Doe who lives in Dhaka, BD.

INSERT INTO DATASET (ins_id, lastname, firstname, city, country)
VALUES(5, 'Doe','John','Sydney','AU'), (6, 'Doe','Jane','Dhaka','BD')

select * from dataset;

-- Insert a new instructor record with id 7 for Antonio Cangiano who lives in Vancouver, CA into the “Instructor” table.

insert into dataset (ins_id, lastname, firstname, city, country)
VALUES(7, 'Cangiano','Antonio','Vancouver','CA')

select * from dataset


-- Insert two new instructor records into the “Instructor” table. First record with id 8 for Steve Ryan who lives in Barlby, GB. Second record with id 9 for Ramesh Sannareddy who lives in Hyderabad, IN.

INSERT INTO DATASET (ins_id, lastname, firstname, city, country)
VALUES(8, 'Ryan','Steve','Barlby','GB'), (9, 'Sannareddy','Ramesh','Hyderabad','IN')

select * from dataset


-- dataset uploaded into a csv file and used as dataset_table

-- checking the table data
select * from dataset_table;


-- Update the city for Sandip to Toronto.

update dataset_table
set city = 'Toronto'
where firstname = 'Sandip'

select * from dataset_table;

-- Update the city and country for Doe with id 5 to Dubai and AE respectively.

update dataset_table
set city = 'Dubai', country = 'AE'
where ins_id = 5

select * from dataset_table;

-- Update the city of the instructor record to Markham whose id is 1.

update dataset_table
set city = 'Markham'
where ins_id = 1

select * from dataset_table

-- Update the city and country for Sandip with id 4 to Dhaka and BD respectively.

update dataset_table
set city = 'Dhaka', country = 'BD'
where ins_id = 4

select * from dataset_table


-- Remove the instructor record of Doe whose id is 6.

delete from dataset_table
where ins_id = 6

select * from dataset_table;

-- Remove the instructor record of Hima.

delete from dataset_table
where firstname = 'Hima'

select * from dataset_table

