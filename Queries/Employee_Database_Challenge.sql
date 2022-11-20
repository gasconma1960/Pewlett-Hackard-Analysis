--Create a SQL file in the Queries folder of your Pewlett-Hackard-Analysis GitHub folder, and name it Employee_Database_challenge.sql.

--Follow the instructions below to complete Deliverable 1.

--Retrieve the emp_no, first_name, and last_name columns from the Employees table.
--Retrieve the title, from_date, and to_date columns from the Titles table.
--Create a new table using the INTO clause.
--Join both tables on the primary key.
--Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955. Then, order by the employee number.
--Export the Retirement Titles table from the previous step as retirement_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
--Before you export your table, confirm that it looks like this image:

SELECT e.emp_no,
		e.first_name,
		e.last_name,
		t.title,
		t.from_date,
		t.to_date
INTO retirement_titles
FROM employees AS e
		INNER JOIN titles AS t
				ON (e.emp_no=t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01'AND '1955-12-31')
ORDER by emp_no ASC;
--Write another query in the Employee_Database_challenge.sql file to retrieve the number of employees by their most recent job title who are about to retire.
--First, retrieve the number of titles from the Unique Titles table.
--Then, create a Retiring Titles table to hold the required information.
--Group the table by title, then sort the count column in descending order.
--Export the Retiring Titles table as retiring_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
--Before you export your table, confirm that it looks like this image:
SELECT DISTINCT ON (emp_no)emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles as rt
WHERE to_date = '9999-01-01'
ORDER by emp_no ASC, to_date DESC;



SELECT COUNT(ut.emp_no), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY title
ORDER BY COUNT(title) DESC;



DROP TABLE retirement_titles
SELECT *FROM unique_titles
DROP TABLE unique_titles
DROP TABLE retiree_titles
DROP TABLE retiring_titles
SELECT *FROM retiring_titles
SELECT *FROM retirement_titles


In the Employee_Database_challenge.sql file, write a query to create a Mentorship Eligibility table that holds the employees who are eligible to participate in a mentorship program.

--1. Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table.
--2. Retrieve the from_date and to_date columns from the Department Employee table.
--3. Retrieve the title column from the Titles table.
--4. Use a DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
--5. Create a new table using the INTO clause.
--6. Join the Employees and the Department Employee tables on the primary key.
--7. Join the Employees and the Titles tables on the primary key.
--8. Filter the data on the to_date column to all the current employees, then filter the data on the birth_date columns to get all the employees whose birth dates are between January 1, 1965 and December 31, 1965.
--9. Order the table by the employee number.
--10. Export the Mentorship Eligibility table as mentorship_eligibilty.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
--11. Before you export your table, confirm that it looks like this image:


SELECT DISTINCT ON (e.emp_no)e.emp_no,
		e.first_name,
		e.last_name,
		e.birth_date,
		de.from_date,
		de.to_date,
		t.title
INTO mentorship_eligibility	
FROM employees as e
	INNER JOIN dept_emp AS de
		ON (e.emp_no=de.emp_no)
		INNER JOIN titles AS t
				ON (e.emp_no=t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01'AND '1965-12-31')
AND (de.to_Date = '9999-01-01')
ORDER by emp_no ASC;
SELECT *FROM mentorship_eligibility	