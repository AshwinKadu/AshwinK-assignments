#####---Que no 1

CREATE DATABASE ATS;

USE ATS;

CREATE TABLE Candidate_info(
ID INT,
Technology VARCHAR(50)
);

INSERT INTO Candidate_info VALUES
(1, 'Data Science'),
(1, 'Tableau'),
(1, 'SQL'),
(2, 'R'),
(2, 'Power BI'),
(1, 'Python'),
(3, 'Tableau'),
(2, 'Power BI')

SELECT* FROM Candidate_info;

SELECT ID FROM Candidate_info WHERE Technology = 'Data Science'
	AND ID IN (SELECT ID FROM Candidate_info WHERE Technology = 'SQL'
		AND ID IN (SELECT ID FROM Candidate_info WHERE Technology = 'Python')
	);


###################

######---Que no 2

CREATE DATABASE Ecom_web;

USE Ecom_web;

CREATE TABLE Product_info(
Pr_ID INT PRIMARY KEY,
Pr_name VARCHAR(50)
);

INSERT INTO Product_info VALUES
(1001, 'Blog'),
(1002, 'Youtube vid'),
(1003, 'Education');


CREATE TABLE Product_info_likes (
    User_ID INT,
    Pr_ID INT,
    liked_date DATE,
    FOREIGN KEY (Pr_ID) REFERENCES Product_info(Pr_ID)
);

INSERT INTO Product_info_likes VALUES
(1, 1001, '2023-08-19'),
(2, 1003, '2023-08-20');

SELECT Pr_ID 
	FROM Product_info
	WHERE Pr_ID NOT IN (SELECT Pr_ID FROM Product_info_likes)

