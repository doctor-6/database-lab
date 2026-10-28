
CREATE DATABASE GhalamchiDB;

GO
USE GhalamchiDB;
GO
CREATE TABLE dbo.Students
(
    StudentID INT PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Grade TINYINT NOT NULL
);

GO
USE GhalamchiDB;
INSERT INTO dbo.Students
    (StudentID, FirstName, LastName, Grade)
VALUES
    (101, 'Ali', 'Ahmadi', 19),
    (102, 'Reza', 'Ghasemi', 12),
    (103, 'Sara', 'Karimi', 17),
    (104, 'Maryam', 'Rezai', 18),
    (105, 'Hossien', 'Jafari', 15);

SELECT * FROM dbo.Students;
--نشون میده میز رو
GO



CREATE DATABASE GajDB;
GO

USE GajDB;
GO
CREATE TABLE dbo.Students
(
    StudentID INT PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Grade TINYINT NOT NULL
);

USE GajDB;
GO
INSERT INTO dbo.Students
    (StudentID, FirstName, LastName, Grade)
VALUES
    (102, 'Negar', 'Mousavi', 19),
    (103, 'Reza', 'Ghasemi', 12),
    (106, 'Sara', 'Karimi', 17),
    (107, 'Amir', 'Hossieni', 18),
    (108, 'Arman', 'Sadeghi', 15);
SELECT * FROM dbo.Students;
--نشون میده میز رو
GO


USE GhalamchiDB;
GO

CREATE VIEW dbo.CommonStudents
AS
SELECT
    G.StudentID,
    G.FirstName,
    G.LastName,
    G.Grade
FROM GhalamchiDB.dbo.Students AS G
INNER JOIN GajDB.dbo.Students AS J
    ON G.StudentID = J.StudentID;
GO
SELECT * FROM dbo.CommonStudents;



--for test
--INSERT INTO GhalamchiDB.dbo.Students
    --(StudentID, FirstName, LastName, Grade)
--VALUES
    --(109, N'پارسا', N'اکبری', 11);
	--INSERT INTO GajDB.dbo.Students
    --(StudentID, FirstName, LastName, Grade)
--VALUES
    --(109, N'پارسا', N'اکبری', 11);
	--SELECT * FROM GhalamchiDB.dbo.CommonStudents;