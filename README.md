# Pewlett-Hackard-Analysis.
## Deliverable 1: The Number of Retiring Employees by Title 
## **Deliverable 1 Instructions**

Using the ERD you created in this module as a reference and your knowledge of SQL queries, create a Retirement Titles table that holds all the titles of employees who were born between January 1, 1952 and December 31, 1955. Because some employees may have multiple titles in the database—for example, due to promotions—you’ll need to use the DISTINCT ON statement to create a table that contains the most recent title of each employee. Then, use the COUNT() function to create a table that has the number of retirement-age employees by most recent job title. Finally, because we want to include only current employees in our analysis, be sure to exclude those employees who have already left the company.
  Create a SQL file in the Queries folder of your Pewlett-Hackard-Analysis GitHub folder, and name it Employee_Database_challenge.sql.

### Follow the instructions below to complete Deliverable 1.


Retrieve the `emp_no`, `first_name`, and `last_name` columns from the `Employees` table.
Retrieve the `title`, `from_date`, and `to_date` columns from the `Titles` table.
Create a new table using the `INTO` clause.
Join both tables on the primary key.
Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955. Then, order by the employee number.
Export the Retirement Titles table from the previous step as retirement_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
Before you export your table, confirm that it looks like this image:


![image](https://user-images.githubusercontent.com/112348240/202344165-6a598eee-7091-424b-8dab-a62584d03959.png)



![image](https://user-images.githubusercontent.com/112348240/202346174-5c597d51-280b-491e-bec7-0d02ec8e588e.png)


![image](https://user-images.githubusercontent.com/112348240/202349440-40e55bbd-f848-4fc7-93fc-1f784d870d18.png)


Deliverable 1 Requirements
You will earn a perfect score for Deliverable 1 by completing all requirements below:

   1. A query is written and executed to create a Retirement Titles table for employees who are born between January 1, 1952 and December 31, 1955. 
The Retirement Titles table is exported as retirement_titles.csv. 
-- 2. A query is written and executed to create a Unique Titles table that contains the employee number, first and last name, and most recent title. 
- 3. The Unique Titles table is exported as unique_titles.csv. (5 pt)
- 4. A query is written and executed to create a Retiring Titles table that contains the number of titles filled by employees who are retiring. (10 pt)
The Retiring Titles table is exported as retiring_titles.csv. (5 pt)
Deliverable 2: The Employees Eligible for the Mentorship Program (30 points)
Deliverable 2 Instructions
Using the ERD you created in this module as a reference and your knowledge of SQL queries, create a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965.
