CREATE DATABASE LibraryDBM;
SHOW DATABASES; 
USE LibraryDBM; 
CREATE TABLE Books (
Book_id INT AUTO_INCREMENT PRIMARY KEY,
Title varchar(50) NOT NULL,
Author varchar(50) NOT NULL,
ISBN varchar(50) UNIQUE,
Published_year YEAR
);
SELECT * FROM Books; 
CREATE TABLE Members (
Member_id INT AUTO_INCREMENT PRIMARY KEY,
First_name VARCHAR(50) NOT NULL,
Last_name VARCHAR(50) NOT NULL,
Email VARCHAR(50) UNIQUE,
Membership_id DATE 
);
SELECT * FROM Members; 
CREATE TABLE Transactions (
Transaction_id INT AUTO_INCREMENT PRIMARY KEY,
Member_id INT,
Book_id INT,
TransactionDate DATE,
ReturnDate DATE,
FOREIGN KEY (Member_id) REFERENCES Members(Member_id),
FOREIGN KEY (Book_id) REFERENCES Books(Book_id)
); 
SELECT * FROM Transactions;
CREATE VIEW ActiveLoans AS 
SELECT 
Transaction_id,
Member_id,
Book_id,
TransactionDate,
CASE 
WHEN ReturnDate IS NULL THEN 'Not Returned'
ELSE ReturnDate 
END AS ReturnStatus 
FROM Transactions; 

SELECT * FROM ActiveLoans;
CREATE INDEX idx_title ON Books (Title);
SHOW INDEX FROM Books;   
CREATE SCHEMA Inventory; 
CREATE SCHEMA MembersManagement; 
drop database LibraryDBM;
show databases;
















































































