-- Question 1
CREATE TABLE student (
    id INT PRIMARY KEY,
    fullName VARCHAR(100),
    age INT
);

-- Question 2
INSERT INTO student (id, fullName, age)
VALUES
(1, 'John Kamau', 19),
(2, 'Mary Wanjiku', 18),
(3, 'David Otieno', 21);

-- Question 3
UPDATE student
SET age = 20
WHERE id = 2;
