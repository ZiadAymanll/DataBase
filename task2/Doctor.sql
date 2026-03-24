
-- Create Table
CREATE TABLE Doctor (
id INT PRIMARY KEY,
name VARCHAR(50),
salary INT,
address VARCHAR(100)
);

-- Insert Data

INSERT INTO Doctor VALUES (1, 'Ahmed', 1000, 'Cairo');
INSERT INTO Doctor VALUES (2, 'Ali', 2000, 'Giza');
INSERT INTO Doctor VALUES (3, 'Mona', 3000, 'Alex');
INSERT INTO Doctor VALUES (4, 'Sara', 4000, 'Mansoura');
INSERT INTO Doctor VALUES (5, 'Omar', 5000, 'Tanta');
INSERT INTO Doctor VALUES (6, 'Laila', 6000, 'Aswan');
INSERT INTO Doctor VALUES (7, 'Hassan', 7000, 'Luxor');
INSERT INTO Doctor VALUES (8, 'Nour', 8000, 'Suez');
INSERT INTO Doctor VALUES (9, 'Khaled', 9000, 'Ismailia');
INSERT INTO Doctor VALUES (10, 'Yara', 10000, 'Zagazig');

-- Update Record (id = 3)
UPDATE Doctor
SET salary = 20000
WHERE id = 3;

-- Delete Record (id = 9)
DELETE FROM Doctor
WHERE id = 9;

-- Concatenate Name with Salary
SELECT name || ' - ' || salary AS name_salary
FROM Doctor;

-- Display Salary * 2
SELECT id, name, salary, salary * 2 AS double_salary
FROM Doctor;

-- Select Specific Salaries

SELECT *
FROM Doctor
WHERE salary IN (1000, 2000, 3000);

-- Rename Table
ALTER TABLE Doctor
RENAME TO PRD_DOCTOR;


