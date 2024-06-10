-- ************************************************************************************** -- 
-- NON-ROUTINE REQUESTS --

-- Problem 1
SELECT r.HallName, AVG(r.RentRate) AS AvgRent
FROM Room r
GROUP BY r.HallName;


-- Problem 2
SELECT Nationality, COUNT(*) AS StudentCount
FROM Student
GROUP BY Nationality;


-- Problem 3
SELECT LeaseNumber, EndDate
FROM Lease
WHERE EndDate BETWEEN NOW() AND DATE_ADD(NOW(), INTERVAL 1 MONTH);


-- Problem 4
SELECT BannerNumber, Name, SpecialNeeds
FROM Student
WHERE SpecialNeeds IS NOT NULL;


-- Problem 5
SELECT Student.BannerNumber, Name, Category
FROM Student
INNER JOIN Lease ON Student.BannerNumber = Lease.BannerNumber
WHERE Lease.LeaseRenewal = TRUE;

-- ************************************************************ --
-- RELATIONAL SCHEMA --  

DESC NEXTOFKIN;
DESC STUDENT;
DESC ADVISOR;
DESC RESIDENCEHALL;
DESC STUDENTFLATS;
DESC ROOM;
DESC RESIDENCESTAFF;
DESC INSPECTION;
DESC INVOICE;
DESC LEASE;
DESC COURSE;
DESC ENROLLMENT;

-- ************************************************************ --
-- SELECT QUERIES OF ALL TABLES --  

SELECT * FROM STUDENT;
SELECT * FROM ADVISOR;
SELECT * FROM NEXTOFKIN;
SELECT * FROM RESIDENCEHALL;
SELECT * FROM STUDENTFLATS;
SELECT * FROM RESIDENCESTAFF;
SELECT * FROM INSPECTION;
SELECT * FROM INVOICE;
SELECT * FROM LEASE;
SELECT * FROM COURSE;
SELECT * FROM ENROLLMENT;
SELECT * FROM STUDENT;

-- ************************************************************ --
