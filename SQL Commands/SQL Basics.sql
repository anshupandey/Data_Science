/*
SQL Bascis commands - Anshu Pandey | BootUP Academy
*/

create database bootup;

use bootup; /* activating the specific database, all furhter actions will happen on this database*/

/*DDL Family Commands*/


/*Creating a table inside a database */
CREATE TABLE students (
    Name VARCHAR(10),
    Email VARCHAR(20),
    City VARCHAR(10),
    DOB DATE,
    Salary NUMERIC(20)
);

/*write a code to create a table - employee - (name, age, email, mobile, address, familysize)*/

CREATE TABLE new_employee (
    Name VARCHAR(10),
    Age INT(3),
    Email VARCHAR(20),
    Mobile VARCHAR(15),
    address VARCHAR(200),
    familysize INT(3)
);

/*Create a dummy table, which we will delete later, to understand how to delete or remove a table*/
CREATE TABLE emp (
    Name VARCHAR(10),
    Email VARCHAR(20)
);

/*DROP - to drop a table, or a column or rows from a database/table */
DROP table emp;

/*DROP - dropping column familysize from new_employee*/
alter table new_employee drop column familysize;

/*Renaming a coulumn age to current_age*/
alter table new_employee rename column age to current_age;

/*ALTER - add a new column address to the table students*/
alter table students add(address varchar(20));

/* DML Family commands - INSERT, UPDATE, DELETE */
insert into students values("Anshu","anshu@anshu.com","Delhi",22/05/1990,456789,"Delhi, India");

/* OR */

insert into students (Name,City,DOB) values("Juan","Jakarta",01/01/1995);





