USE master
GO

IF EXISTS (SELECT * from sysdatabases WHERE name='Registration')
   DROP DATABASE Registration
GO

CREATE DATABASE Registration
ON
(
   NAME = registration_database,
   FILENAME = 'C:\books\2005\vbhtp3\examples\ch21\Registration.mdf'
)
GO

USE Registration
GO

CREATE TABLE Users
(
   UserID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
   FirstName varchar(30) NOT NULL,
   LastName varchar(30) NOT NULL,
   Email varchar(50) NOT NULL,
   PhoneNumber varchar(15) NOT NULL,
   Publication varchar(50) NOT NULL,
   OS varchar(15) NOT NULL
)
GO