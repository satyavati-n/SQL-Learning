--SQL Practice
-- DELETING TABLE  
DROP TABLE IF EXISTS users;  
  
-- CREATING TABLE  
CREATE TABLE users (  
    user_id INT PRIMARY KEY,  
    name VARCHAR(50) NOT NULL,  
    email VARCHAR(100) UNIQUE,  
    age INTEGER CHECK (age >= 18),  
    reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP  
);  
  
--INSERTING DATA INTO TABLE  
INSERT INTO users (user_id, name, email, age)   
VALUES (1, 'John Doe', 'john.doe@example.com', 25);  
  
-- INSERTING DATA INTO TABLE 2  
INSERT INTO users (user_id, name, email, age)   
VALUES (2, 'John Doe', 'john1.doe@example.com', 19);  
  
-- SELECTING ALL DATA  
SELECT * FROM users;


-- Drop the table if it already exists 
DROP TABLE IF EXISTS users; 
 
-- Create the users table 
CREATE TABLE IF NOT EXISTS users ( 
    user_id SERIAL PRIMARY KEY, 
    username VARCHAR(50) NOT NULL, 
    email VARCHAR(100) NOT NULL, 
    age INT, 
    city VARCHAR(50) 
); 
 
-- SELECTING ALL DATA 
SELECT * FROM users; 
 
-- Insert 5 sample users into the users table 
INSERT INTO users (username, email, age, city) VALUES 
('Rajesh', 'rajesh@gmail.com', 25, 'Mumbai'), 
('Priya', 'priya@yahoo.com', 30, 'Delhi'), 
('Ankit', 'ankit@gmail.com', 28, 'Bangalore'), 
('Sneha', 'sneha@hotmail.com', 35, 'Pune'), 
('Vikram', 'vikram@gmail.com', 22, 'Hyderabad'); 
 
-- SELECTING SPECIFIC COLUMNS 
SELECT username, city FROM users; 
 
-- UPDATING DATA 
UPDATE users  
SET age=28 
WHERE username='Rajesh'; 
 
-- SELECTING ALL DATA 
SELECT * FROM users; 
 
-- SORTING DATA 
SELECT * FROM users ORDER BY user_id ASC; 
 
-- UPDATING DATA 
UPDATE users 
SET city='Chennai' 
WHERE age>=30; 
 
-- UPDATING MULTIPLE COLUMNS 
UPDATE users 
SET age=31, city='kolkat1a' 
WHERE username='Priya'; 
 
-- UPDATING DATA USING LIKE 
UPDATE users 
SET age=age+1 
WHERE email LIKE '%@gmail.com'; 


-- Drop the table if it already exists  
DROP TABLE IF EXISTS users;  
  
-- Create the users table  
CREATE TABLE IF NOT EXISTS users (  
    user_id SERIAL PRIMARY KEY,  
    username VARCHAR(50) NOT NULL,  
    email VARCHAR(100) NOT NULL,  
    age INT,  
    city VARCHAR(50)  
);  
  
-- SELECTING ALL DATA 
SELECT * FROM users;  
  
-- Insert 5 sample users into the users table  
  
INSERT INTO USERS (USERNAME,EMAIL, AGE,CITY)  
VALUES ('Rajesh', 'rajesh@gmail.com', 25, 'Mumbai'),  
				('Priya', 'priya@yahoo.com', 30, 'Delhi'),  
				('Ankit', 'ankit@gmail.com', 28, 'Bangalore'),  
				('Sneha', 'sneha@hotmail.com', 35, 'Pune'),  
				('Vikram', 'vikram@gmail.com', 22, 'Hyderabad');  
  
-- SELECTING SPECIFIC COLUMNS 
SELECT USERNAME,  
	CITY  
FROM USERS;  
  
-- UPDATING DATA 
UPDATE users   
SET age=28  
WHERE username='Rajesh';  
  
-- SELECTING ALL DATA 
SELECT * FROM users;  
  
-- SORTING DATA 
SELECT *  
FROM USERS  
ORDER BY USER_ID ASC;  
  
-- UPDATING DATA 
UPDATE users  
SET city='Chennai'  
WHERE age>=30;  
  
-- UPDATING MULTIPLE COLUMNS 
UPDATE users  
SET age=31, city='kolkat1a'  
WHERE username='Priya';  
  
-- UPDATING DATA USING LIKE 
UPDATE users  
SET age=age+1  
WHERE email LIKE '%@gmail.com';  
  
-- DELETING DATA 
DELETE FROM users WHERE user_id=6;


-- Drop the table if it already exists  
DROP TABLE IF EXISTS users;  
  
-- Create the users table  
CREATE TABLE IF NOT EXISTS users (  
    user_id SERIAL PRIMARY KEY,  
    username VARCHAR(50) NOT NULL,  
    email VARCHAR(100) NOT NULL,  
    age INT,  
    city VARCHAR(50)  
);  
  
-- SELECTING ALL DATA 
SELECT * FROM users;  
  
-- Insert 5 sample users into the users table  
  
INSERT INTO USERS (USERNAME,EMAIL, AGE,CITY)  
VALUES ('Rajesh', 'rajesh@gmail.com', 25, 'Mumbai'),  
				('Priya', 'priya@yahoo.com', 30, 'Delhi'),  
				('Ankit', 'ankit@gmail.com', 28, 'Bangalore'),  
				('Sneha', 'sneha@hotmail.com', 35, 'Pune'),  
				('Vikram', 'vikram@gmail.com', 22, 'Hyderabad');  
  
-- SELECTING SPECIFIC COLUMNS 
SELECT USERNAME,  
	CITY  
FROM USERS;  
  
-- UPDATING DATA 
UPDATE users   
SET age=28  
WHERE username='Rajesh';  
  
-- SELECTING ALL DATA 
SELECT * FROM users;  
  
-- SORTING DATA 
SELECT *  
FROM USERS  
ORDER BY USER_ID ASC;  
  
-- UPDATING DATA 
UPDATE users  
SET city='Chennai'  
WHERE age>=30;  
  
-- UPDATING MULTIPLE COLUMNS 
UPDATE users  
SET age=31, city='kolkat1a'  
WHERE username='Priya';  
  
-- UPDATING DATA USING LIKE 
UPDATE users  
SET age=age+1  
WHERE email LIKE '%@gmail.com';  
  
-- DELETING DATA 
DELETE FROM users WHERE user_id=6;  
  
  
-- To Rename the username column to Full_Name  
  
-- RENAMING COLUMN 
ALTER TABLE users  
RENAME COLUMN username TO full_name;  
  
-- SELECTING AND SORTING DATA 
SELECT * FROM USERS ORDER BY USER_ID ASC;  
  
--To change the age column's data type from INT to SMALLINT  
  
-- CHANGING DATA TYPE 
ALTER TABLE users  
ALTER COLUMN age TYPE SMALLINT;  
  
  
-- TO add a NOT NULL CONSTRAINT to city column  
  
-- ADDING NOT NULL CONSTRAINT 
ALTER TABLE users  
ALTER COLUMN city SET NOT NULL;  
  
-- Adding CHECK constraint to age column  
  
-- DROPPING CONSTRAINT 
ALTER TABLE users  
DROP CONSTRAINT age;  
  
-- ADDING CHECK CONSTRAINT 
ALTER TABLE users  
ADD CONSTRAINT age CHECK(age>=18);  
  
-- inserting data to check constraint of age 
INSERT INTO USERS (FULL_NAME,EMAIL, AGE,CITY)  
VALUES ('Vinod', 'rajesh@gmail.com',19, 'Mumbai');  
  
  
-- change the table name 
-- RENAMING TABLE 
ALTER TABLE users  
RENAME TO customers;  
  
-- SELECTING AND SORTING DATA 
SELECT * FROM customers ORDER BY USER_ID ASC;
```
