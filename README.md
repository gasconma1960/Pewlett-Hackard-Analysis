# Pewlett-Hackard-Analysis.
## Deliverable 1: The Number of Retiring Employees by Title 
## **Deliverable 1 Instructions**

Using the ERD you created in this module as a reference and your knowledge of SQL queries, create a Retirement Titles table that holds all the titles of employees who were born between January 1, 1952 and December 31, 1955. Because some employees may have multiple titles in the database—for example, due to promotions—you’ll need to use the DISTINCT ON statement to create a table that contains the most recent title of each employee. Then, use the COUNT() function to create a table that has the number of retirement-age employees by most recent job title. Finally, because we want to include only current employees in our analysis, be sure to exclude those employees who have already left the company.
  Create a SQL file in the Queries folder of your Pewlett-Hackard-Analysis GitHub folder, and name it Employee_Database_challenge.sql.

### Follow the instructions below to complete Deliverable 1.


- Retrieve the `emp_no`, `first_name`, and `last_name` columns from the `Employees` table.
- Retrieve the `title`, `from_date`, and `to_date` columns from the `Titles` table.
- Create a new table using the `INTO` clause.
- Join both tables on the primary key.
- Filter the data on the `birth_date` column to retrieve the employees who were born between 1952 and 1955. Then, order by the employee number.
- Export the Retirement Titles table from the previous step as `retirement_titles.csv` and save it to your Data folder in the *Pewlett-Hackard-Analysis* folder.
- Before you export your table, I confirm that my image looks like the one on the Challenge request. See below:

*Image 1. Retirement Titles*

![image](https://user-images.githubusercontent.com/112348240/202344165-6a598eee-7091-424b-8dab-a62584d03959.png)

- Copy the query from the `Employee_Challenge_starter_code.sql` and add it to your `Employee_Database_challenge.sql` file.

- Retrieve the employee number, first and last name, and title columns from the Retirement Titles table.

    - These columns will be in the new table that will hold the most recent title of each employee.
    
- Use the `DISTINCT ON` statement to retrieve the first occurrence of the employee number for each set of rows defined by the `ON ()` clause.

- Exclude those employees that have already left the company by filtering on to_date to keep only those dates that are equal to '9999-01-01'.
- Create a Unique Titles table using the INTO clause.
- Sort the Unique Titles table in ascending order by the employee number and descending order by the last date (i.e., to_date) of the most recent title.
- Export the Unique Titles table as unique_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
- Before you export your table, I confirm that my image looks like the one on the Challenge request. See below:

*Image 2. Unique Titles*

![image](https://user-images.githubusercontent.com/112348240/202346174-5c597d51-280b-491e-bec7-0d02ec8e588e.png)


![image](https://user-images.githubusercontent.com/112348240/202349440-40e55bbd-f848-4fc7-93fc-1f784d870d18.png)


Deliverable 1 Requirements
You will earn a perfect score for Deliverable 1 by completing all requirements below:

  A query is written and executed to create a Retirement Titles table for employees who are born between January 1, 1952 and December 31, 1955. 
  
  The Retirement Titles table is exported as retirement_titles.csv. 
  
  A query is written and executed to create a Unique Titles table that contains the employee number, first and last name, and most recent title. 
  
  The Unique Titles table is exported as unique_titles.csv. 
  
  A query is written and executed to create a Retiring Titles table that contains the number of titles filled by employees who are retiring. 
  
  The Retiring Titles table is exported as retiring_titles.csv. 
  

Deliverable 2: The Employees Eligible for the Mentorship Program (30 points)
Deliverable 2 Instructions
Using the ERD you created in this module as a reference and your knowledge of SQL queries, create a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965.
