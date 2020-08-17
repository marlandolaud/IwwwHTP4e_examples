USE master
GO

IF EXISTS (SELECT * from sysdatabases WHERE name='Guestbook')
   DROP DATABASE Guestbook
GO

CREATE DATABASE Guestbook
ON
(
   NAME = guestbook_database,
   FILENAME = 'C:\books\2005\vbhtp3\examples\ch21\Guestbook.mdf'
)
GO

USE Guestbook
GO

CREATE TABLE Messages
(
   MessageID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
   Date varchar(20) NOT NULL,
   Name varchar(50) NOT NULL,
   Email varchar(50) NOT NULL,
   Message text NOT NULL
)
GO