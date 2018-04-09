SHOW DATABASES;
USE testd;
CREATE TABLE amit_test(
FirstName VARCHAR(20) NOT NULL,
LastName VARCHAR(20) NOT NULL,
EmpID INT,
PRIMARY KEY (EmpID)
);	

SHOW TABLES;
DESC amit_test;

INSERT INTO amit_test(FirstName, LastName, EmpID)
VALUES('Amit', 'Rahi', 138125);

INSERT INTO amit_test
VALUES('Gaurav', 'Mehta', 1096153);

/* If you want to fetch all the fields of the CUSTOMERS table, then you should use the following query. */
SELECT * from amit_test;


/* The following code is an example, which would fetch the ID, Name and Salary fields of the customers available in CUSTOMERS table.*/
SELECT EmpID from amit_test;


/******************************WHERE Clause************************/
/*<Summay> 
The SQL WHERE clause is used to specify a condition while fetching the data from a single table or by joining with multiple tables. 
If the given condition is satisfied, then only it returns a specific value from the table.
</Summay>*/

SELECT FirstName from amit_test WHERE EmpID = 138125;
SELECT FirstName from amit_test WHERE FirstName = 'Shafi';

/******************************UPDATE************************/
/*<Summay> 
Update the existing table bby adding new column and assigning new values to the  exexisting records
</Summay>*/

ALTER TABLE amit_test
ADD COLUMN Salary INT NOT NULL;


UPDATE amit_test SET Salary = 50000 WHERE EmpID = 138125;
UPDATE amit_test SET Salary = 55000 WHERE EmpID = 123456;
UPDATE amit_test SET Salary = 80000 Where EmpID = 1096153;

/******************************AND, OR Operator************************/
/*<Summay>
The SQL AND & OR operators are used to combine multiple conditions to narrow data in an SQL statement. 
These two operators are called as the conjunctive operators.
</Summary>*/

select EmpID from amit_test where FirstName = 'Shafi' and Salary = 55000;

insert into amit_test
values('Shafi', 'Punjabi', 1230, 45000);

select EmpID from amit_test where LastName = 'Shafi' or salary = 45000;

select EmpID from amit_test where LastName = 'Mehta' or salary = 45000;

select LastName from amit_test where Salary > 30000 and Firstname='Shafi';

select LastName from amit_test where Salary > 50000 and Firstname='Shafi';

/******************************LIKE Operator************************/
/*<Summay>
The SQL LIKE clause is used to compare a value to similar values using wildcard operators. 
There are two wildcards used in conjunction with the LIKE operator. 1) The percent sign (%) 2) The underscore (_)
</Summary>*/




