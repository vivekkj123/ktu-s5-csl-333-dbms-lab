CREATE TABLE workers (id INT PRIMARY KEY, name VARCHAR(255), email VARCHAR(255), phone_no INT, salary INT, city VARCHAR(255));

INSERT INTO workers VALUES (1, 'John', 'john@example.com', 1234567890, 40000, 'New York');
INSERT INTO workers VALUES (2, 'Jane', 'jane@example.com', 2345678901, 40000, 'New York');
INSERT INTO workers VALUES (3, 'Bob', 'bob@example.com', 3456789012, 30000, 'New York');
INSERT INTO workers VALUES (4, 'Alice', 'alice@example.com', 4567890123, 25000, 'Los Angeles');
INSERT INTO workers VALUES (5, 'Mike', 'mike@example.com', 5678901234, 45000, 'Chicago');
INSERT INTO workers VALUES (6, 'Sara', 'sara@example.com', 6789012345, 40000, 'Chicago');
INSERT INTO workers VALUES (7, 'Tom', 'tom@example.com', 7890123456, 35000, 'Houston');
INSERT INTO workers VALUES (8, 'Lisa', 'lisa@example.com', 8901234567, 30000, 'Houston');

SELECT * FROM WORKERS


SELECT CITY, COUNT(*) FROM WORKERS
GROUP BY CITY


SELECT City, Salary, Count(*)
FROM WORKERS
GROUP BY City, Salary;



SELECT city, COUNT(*) AS num_of_employees
FROM workers
GROUP BY city
ORDER BY num_of_employees DESC;

 

SELECT city, COUNT(*) AS num_employees
FROM workers
GROUP BY city
HAVING AVG(salary) > 30000;