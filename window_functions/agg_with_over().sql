CREATE TABLE mysqllab.marks (
	student_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    branch VARCHAR(255),
    marks INTEGER
);

INSERT INTO mysqllab.marks (name,branch,marks)VALUES 
('Nitish','EEE',82),
('Rishabh','EEE',91),
('Anukant','EEE',69),
('Rupesh','EEE',55),
('Shubham','CSE',78),
('Ved','CSE',43),
('Deepak','CSE',98),
('Arpan','CSE',95),
('Vinay','ECE',95),
('Ankit','ECE',88),
('Anand','ECE',81),
('Rohit','ECE',95),
('Prashant','MECH',75),
('Amit','MECH',69),
('Sunny','MECH',39),
('Gautam','MECH',51);


-- Aggregate Function With Over()

-- Find all the students who have marks higher than the avg marks of their respective branch
SELECT *, AVG(marks) 
OVER(PARTITION BY branch) 
FROM mysqllab.marks;

-- Find all the minimum marks and maximum of the entire data 
SELECT *,
MAX(marks) OVER() AS 'max_marks',
MIN(marks) OVER() AS 'min_marks'
FROM mysqllab.marks
ORDER BY student_id; -- to remove the sorting behavior

SELECT *,
AVG(marks) OVER() AS 'avg_marks',
MAX(marks) OVER() AS 'max_marks',
MIN(marks) OVER() AS 'min_marks'
FROM mysqllab.marks
ORDER BY student_id;

SELECT *,
AVG(marks) OVER() AS 'overall_avg',
MAX(marks) OVER() AS 'max_marks',
MIN(marks) OVER() AS 'min_marks',
MIN(marks) OVER(PARTITION BY branch) AS 'min_by_branch',
MAX(marks) OVER(PARTITION BY branch) AS 'max_by_branch'
FROM mysqllab.marks
ORDER BY student_id;
