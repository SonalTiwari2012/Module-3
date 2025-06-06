CREATE DATABASE HospitalsDB;
USE HospitalsDB;

CREATE TABLE Doctors (
doctor_id INT PRIMARY KEY,
first_name VARCHAR(50),
last__name VARCHAR(50),
specialization VARCHAR(100)
);

CREATE TABLE Patients (
patient_id INT PRIMARY KEY,
first_name VARCHAR(50),
last__name VARCHAR(50),
age INT,
doctor_id INT
);

INSERT INTO Doctors (doctor_id, first_name, last__name, specialization)
VALUES
(1,'Mahesh','Peter','Cardiology'),
(2,'Soni','Shyam','Orthopedics'),
(3,'Arjun','Sha','Neurology');

INSERT INTO Patients (patient_id, first_name, last__name, age, doctor_id)
VALUES
(101, 'Ameya','Sreekant',30,1),
(102,'Tanya', 'Jane',45,2),
(103,'Rakesh','Sharma',50,NULL);
SELECT 
Patients.First_name AS Patient_name,
Doctors.First_name AS Doctors_name,
Doctors.specialization
FROM Patients
INNER JOIN Doctors
ON Patients.doctor_id = Doctors.doctor_id;

SELECT
Patients.First_name AS Patient_name,
Doctors.First_name AS Doctors_name,
Doctors.specialization
FROM Patients
LEFT JOIN Doctors
ON Patients.doctor_id = Doctors.doctor_id;

SELECT
Patients.First_name AS Patient_name,
Doctors.First_name AS Doctors_name,
Doctors.specialization
FROM Patients
RIGHT JOIN Doctors
ON Patients.doctor_id = Doctors.doctor_id;

SELECT 
Patients.First_name AS Patient_name,
Doctors.First_name AS Doctors_name,
Doctors.specialization
FROM Patients
LEFT JOIN Doctors
ON Patients.doctor_id = Doctors.doctor_id

UNION

SELECT 
Patients.First_name AS Patient_name,
Doctors.First_name AS Doctors_name,
Doctors.specialization
FROM Patients
RIGHT JOIN Doctors
ON Patients.doctor_id = Doctors.doctor_id;


SELECT 
Patients.First_name AS Patient_name,
Doctors.First_name AS Doctors_name
FROM Patients
CROSS JOIN Doctors;

ALTER TABLE Patients add Department VARCHAR(50);
UPDATE Patients
SET department = 'Cardiology'
WHERE doctor_id = 1;

UPDATE Patients
SET department = 'Orthopedics'
WHERE doctor_id = 2;

set sql_safe_updates = 0;

UPDATE Patients
SET department = 'General';







