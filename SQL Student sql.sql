create database Samples
use Samples
CREATE TABLE Stud(
reg_no INT PRIMARY KEY,
name VARCHAR(20) NOT NULL,
department VARCHAR(40) NOT NULL,
year INT NOT NULL);
INSERT INTO Stud(reg_no,name,department,year) VALUES
(135,'Rohith','Computer Science',4),
(147,'Sharma','It',4),
(173,'Vishnu','AI&DS',3),
(124,'Nithish','Cyber security',3);
SELECT * FROM Stud;
UPDATE Stud
SET name='Naveen',
department='BCA',
year=3 WHERE reg_no =173;
UPDATE Stud
SET name='shini',
department='MCA',
year=4 WHERE reg_no =124; 

INSERT INTO Stud(reg_no,name,department,year)
VALUES (145,'srini','EEE',2);
SELECT * FROM Stud;

ALTER TABLE Stud
ADD phone_num VARCHAR(13);
UPDATE Stud 
SET phone_num ='9342150655' WHERE reg_no =124;
UPDATE Stud
SET Phone_num ='6743189078' WHERE reg_no =173;
UPDATE Stud
SET Phone_num ='6789432189' WHERE reg_no =135;
UPDATE Stud
SET Phone_num ='7890432156' WHERE reg_no =147;

SELECT COUNT(*) AS tot_Student FROM Stud;
SELECT MAX(year) AS MAX_yr FROM Stud;
SELECT MIN(year) AS MIN_yr FROM Stud;
SELECT AVG(year) AS AVG_yr FROM Stud;
SELECT Department,COUNT(*) As dept_count FROM Stud GROUP BY department;
SELECT department,MAX(year) AS max_yr FROM Stud
GROUP BY department;

SELECT * FROM Stud
ORDER BY year ASC;
SELECT * FROM Stud
ORDER BY name ;
SELECT * FROM Stud
ORDER BY name DESC;
SELECT UPPER(department) AS dep_upr FROM Stud;
SELECT LOWER(name) AS name_lr FROM Stud;
SELECT UPPER(name) AS name_lr FROM Stud;
SELECT LEFT(name,2) AS srt FROM Stud;
SELECT name,LENGTH(name) AS name_lt FROM Stud;
SELECT CONCAT(name,' - ',department)AS combine FROM Stud;
SELECT name,year,year,year + 1 AS nx_yr FROM Stud;
SELECT reg_no,MOD(reg_no,2) AS odr FROM Stud;
ALTER TABLE Stud
ADD date_Det DATE;
SELECT * FROM Stud;

UPDATE Stud SET date_Det ='2021-03-31' WHERE reg_no=135;
UPDATE Stud SET date_Det ='2021-04-30' WHERE reg_no=124;
UPDATE Stud SET date_Det ='2021-02-28' WHERE reg_no=145;
UPDATE Stud SET date_Det ='2021-08-30' WHERE reg_no=147;
UPDATE Stud SET date_Det ='2021-06-17' WHERE reg_no=173;

ALTER TABLE Stud
DROP COLUMN date_detail;

SELECT CURDATE();
SELECT CURTIME();

SELECT reg_no,name,year(date_Det) AS yr FROM Stud;







