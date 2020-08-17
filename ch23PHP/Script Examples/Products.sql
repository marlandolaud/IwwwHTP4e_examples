DROP DATABASE IF EXISTS products;

CREATE DATABASE products;

USE products;

CREATE TABLE books
(
   ID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
   Title varchar(60),
   Category varchar(32),
   ISBN varchar(20)
);

INSERT INTO books (Title,Category,ISBN) VALUES ('Visual Basic 2005 How to Program 3e','Programming','0131869000');
INSERT INTO books (Title,Category,ISBN) VALUES ('Visual C# 2005 How to Program 2e','Programming','0131525239');
INSERT INTO books (Title,Category,ISBN) VALUES ('Java How to Program 7e','Programming','0132222205');
INSERT INTO books (Title,Category,ISBN) VALUES ('C++ How to Program 6e','Programming','0136152503');
INSERT INTO books (Title,Category,ISBN) VALUES ('C How to Program 5e','Programming','0132404168');
INSERT INTO books (Title,Category,ISBN) VALUES ('Internet & World Wide Web How to Program 4e','Programming','0130308978');
INSERT INTO books (Title,Category,ISBN) VALUES ('Operating Systems 3e','Operating Systems','0131828274');

