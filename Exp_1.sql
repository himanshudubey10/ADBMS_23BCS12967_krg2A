CREATE DATABASE UniDatabase;
USE UniversityDatabase;
CREATE TABLE Author_Tbl(AuthId INT PRIMARY KEY, AuthName VARCHAR(30), AuthCountry VARCHAR(20));
CREATE TABLE Books_Tbl(BookId INT PRIMARY KEY, BookName VARCHAR(30), AuthID int, PublishYear int);
ALTER TABLE Books_Tbl ADD CONSTRAINT Fk_Books_Author FOREIGN KEY (AuthID) references Author_Tbl(AuthId);
INSERT INTO Author_Tbl (AuthId, AuthName, AuthCountry) values (1, 'Aman', 'India'), (2, 'Aryan', 'India'), (3, 'Yash', 'Africa');
SELECT * FROM Author_Tbl;
INSERT INTO Books_Tbl(BookId, BookName, AuthID, PublishYear) values(1, 'Https In one Go', 1, 2024), (2, 'Java crash couse', 2, 2022),(3, 'I dont know', 1, 2019);
SELECT * FROM Books_Tbl;
SELECT B.BookName, A.AuthName, A.AuthCountry
FROM Author_Tbl A
INNER JOIN
Books_Tbl B
ON (A.AuthId = B.AuthID);