------------------------------------------
--DDL statement for table 'HR' database--
--------------------------------------------

-- Drop the tables in case they exist

DROP TABLE EMPLOYEES;
DROP TABLE JOB_HISTORY;
DROP TABLE JOBS;
DROP TABLE DEPARTMENTS;
DROP TABLE LOCATIONS;

-- Create the tables

CREATE TABLE EMPLOYEES (
                          EMP_ID CHAR(9) NOT NULL,
                          F_NAME VARCHAR(15) NOT NULL,
                          L_NAME VARCHAR(15) NOT NULL,
                          SSN CHAR(9),
                          B_DATE DATE,
                          SEX CHAR,
                          ADDRESS VARCHAR(30),
                          JOB_ID CHAR(9),
                          SALARY DECIMAL(10,2),
                          MANAGER_ID CHAR(9),
                          DEP_ID CHAR(9) NOT NULL,
                          PRIMARY KEY (EMP_ID)
                        );

CREATE TABLE JOB_HISTORY (
                            EMPL_ID CHAR(9) NOT NULL,
                            START_DATE DATE,
                            JOBS_ID CHAR(9) NOT NULL,
                            DEPT_ID CHAR(9),
                            PRIMARY KEY (EMPL_ID,JOBS_ID)
                          );

CREATE TABLE JOBS (
                    JOB_IDENT CHAR(9) NOT NULL,
                    JOB_TITLE VARCHAR(30) ,
                    MIN_SALARY DECIMAL(10,2),
                    MAX_SALARY DECIMAL(10,2),
                    PRIMARY KEY (JOB_IDENT)
                  );

CREATE TABLE DEPARTMENTS (
                            DEPT_ID_DEP CHAR(9) NOT NULL,
                            DEP_NAME VARCHAR(15) ,
                            MANAGER_ID CHAR(9),
                            LOC_ID CHAR(9),
                            PRIMARY KEY (DEPT_ID_DEP)
                          );

CREATE TABLE LOCATIONS (
                          LOCT_ID CHAR(9) NOT NULL,
                          DEP_ID_LOC CHAR(9) NOT NULL,
                          PRIMARY KEY (LOCT_ID,DEP_ID_LOC)
                        );

-- Retrieve only the EMPLOYEES records that correspond to jobs in the JOBS table.

select * from employees where JOB_ID IN (select job_ident from jobs);

-- Retrieve only the list of employees whose JOB_TITLE is Jr. Designer.

select * from employees where JOB_ID in (select job_ident from jobs where job_title = 'Jr.Designer');

-- Retrieve JOB information and who earn more than $70,000.

select JOB_TITLE, MIN_SALARY, MAX_SALARY, JOB_IDENT from jobs where job_ident in (select job_id from employees where salary > 70000);

-- Retrieve JOB information and whose birth year is after 1976.

select job_title, min_salary, max_salary, job_ident from jobs where job_ident in (select job_id from employees where year(B_DATE) > 1976 );

-- Retrieve JOB information for female employees whose birth year is after 1976.

select job_title, min_salary,max_salary, job_ident from jobs where job_ident in (select job_id from employees where sex = 'F' and year(B_DATE) > 1976);

-- Perform an implicit cartesian/cross join between EMPLOYEES and JOBS tables.

select * from employees, jobs;

-- Retrieve only the EMPLOYEES records that correspond to jobs in the JOBS table.

select * from employees, jobs where employees.job_id = jobs.job_ident;

-- Redo the previous query, using shorter aliases for table names.

select * from employees E, jobs J where E.job_id = J.job_ident;

--Redo the previous query, but retrieve only the Employee ID, Employee Name and Job Title.

select emp_id,F_NAME,L_NAME job_title from employees E, jobs J where E.JOB_ID = J.JOB_IDENT;
