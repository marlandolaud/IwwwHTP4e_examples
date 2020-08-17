USE master
GO

IF EXISTS (SELECT * from sysdatabases WHERE name='Books')
   DROP DATABASE Books
GO

CREATE DATABASE Books
ON
(  
   NAME = books_database,
   FILENAME = 'C:\books\2005\vbhtp3\examples\ch20\Books.mdf' 
)
GO

USE BOOKS
GO


CREATE TABLE Authors
(
   AuthorID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
   FirstName varchar(30) NOT NULL,
   LastName varchar(30) NOT NULL
)
GO

CREATE TABLE Titles
(
   ISBN varchar(20) NOT NULL PRIMARY KEY,
   Title varchar(100) NOT NULL,
   EditionNumber int NOT NULL,
   Copyright varchar(4) NOT NULL,
)
GO

CREATE TABLE AuthorISBN
(
   AuthorID int NOT NULL,
   ISBN varchar(20) NOT NULL,
   FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID),
   FOREIGN KEY (ISBN) References Titles(ISBN)
)
GO

INSERT INTO Authors (FirstName,LastName) VALUES ('Harvey','Deitel')
GO
INSERT INTO Authors (FirstName,LastName) VALUES ('Paul','Deitel')
GO
INSERT INTO Authors (FirstName,LastName) VALUES ('Andrew','Goldberg')
GO
INSERT INTO Authors (FirstName,LastName) VALUES ('David','Choffnes')
GO


INSERT INTO Titles (ISBN,Title,EditionNumber,Copyright) VALUES ('0131869000','Visual Basic 2005 How to Program',3,'2006')
GO
INSERT INTO AuthorISBN (AuthorID,ISBN) VALUES (1,'0131869000')
GO
INSERT INTO AuthorISBN (AuthorID,ISBN) VALUES (2,'0131869000')
GO

INSERT INTO Titles (ISBN,Title,EditionNumber,Copyright) VALUES ('0131525239','Visual C# 2005 How to Program',2,'2006')
GO 
INSERT INTO AuthorISBN (AuthorID,ISBN) VALUES (1,'0131525239')
GO
INSERT INTO AuthorISBN (AuthorID,ISBN) VALUES (2,'0131525239')
GO

INSERT INTO Titles (ISBN,Title,EditionNumber,Copyright) VALUES ('0131483986','Java How to Program',6,'2005')
GO
INSERT INTO AuthorISBN (AuthorID,ISBN) VALUES (1,'0131483986')
GO
INSERT INTO AuthorISBN (AuthorID,ISBN) VALUES (2,'0131483986')
GO

INSERT INTO Titles (ISBN,Title,EditionNumber,Copyright) VALUES ('0131857576','C++ How to Program',5,'2005')
GO
INSERT INTO AuthorISBN (AuthorID,ISBN) VALUES (1,'0131857576')
GO
INSERT INTO AuthorISBN (AuthorID,ISBN) VALUES (2,'0131857576')
GO

INSERT INTO Titles (ISBN,Title,EditionNumber,Copyright) VALUES ('0131426443','C How to Program',4,'2004')
GO
INSERT INTO AuthorISBN (AuthorID,ISBN) VALUES (1,'0131426443')
GO
INSERT INTO AuthorISBN (AuthorID,ISBN) VALUES (2,'0131426443')
GO

INSERT INTO Titles (ISBN,Title,EditionNumber,Copyright) VALUES ('0131450913','Internet & World Wide Web How to Program',3,'2004')
GO
INSERT INTO AuthorISBN (AuthorID,ISBN) VALUES (1,'0131450913')
GO
INSERT INTO AuthorISBN (AuthorID,ISBN) VALUES (2,'0131450913')
GO
INSERT INTO AuthorISBN (AuthorID,ISBN) VALUES (3,'0131450913')
GO

INSERT INTO Titles (ISBN,Title,EditionNumber,Copyright) VALUES ('0131828274','Operating Systems',3,'2004')
GO
INSERT INTO AuthorISBN (AuthorID,ISBN) VALUES (1,'0131828274')
GO
INSERT INTO AuthorISBN (AuthorID,ISBN) VALUES (2,'0131828274')
GO
INSERT INTO AuthorISBN (AuthorID,ISBN) VALUES (4,'0131828274')
GO

