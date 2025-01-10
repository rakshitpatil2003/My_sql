CREATE DATABASE college;

USE college;

CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

CREATE TABLE dept(
	id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE teacher(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY(dept_id) REFERENCES dept(id)
);

INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "anil", 78, "C", "pune"),
(102, "Bhumika", 93, "A", "mumbai"),
(103, "chetan", 85, "B", "mumbai"),
(104, "dhruv", 96, "A", "delhi"),
(105, "esha", 12, "F", "delhi"),
(106, "farah", 82, "B", "delhi");

SELECT * FROM student;

SELECT * FROM student WHERE marks BETWEEN 80 AND 90;
SELECT * FROM student WHERE city NOT IN ("mumbai","pune");

SELECT *
FROM student
ORDER BY marks DESC
LIMIT 3;

SELECT MAX(marks)
FROM student;


SELECT city,COUNT(name)
FROM student
GROUP BY city;

SELECT city,AVG(marks)
FROM student
GROUP BY city;

SELECT city,COUNT(rollno)
FROM student
GROUP BY city
HAVING MAX(marks)>90;


SELECT city
FROM student
WHERE grade="A"
GROUP BY city
HAVING MAX(marks)>=93
ORDER BY city DESC;

SET SQL_SAFE_UPDATES = 0;

UPDATE student
SET grade="O"
WHERE grade="A";

SELECT * FROM student;


