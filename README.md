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

- Exclude those employees that have already left the company by filtering on to_date to keep only those dates that are equal to `'9999-01-01'`.
- Create a Unique Titles table using the `INTO` clause.
- Sort the Unique Titles table in ascending order by the employee number and descending order by the last date (i.e., `to_date`) of the most recent title.
- Export the Unique Titles table as `unique_titles.csv` and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
- Before you export your table, I confirm that my image looks like the one on the Challenge request. See below:

*Image 2. Unique Titles*

![image](https://user-images.githubusercontent.com/112348240/202346174-5c597d51-280b-491e-bec7-0d02ec8e588e.png)


Deliverable 1 Requirements

- A query is written and executed to create a Retirement Titles table for employees who are born between January 1, 1952 and December 31, 1955. 
  
- The Retirement Titles table is exported as `retirement_titles.csv`. 
  
- A query is written and executed to create a Unique Titles table that contains the employee number, first and last name, and most recent title. 
  
- The Unique Titles table is exported as `unique_titles.csv`. 
  
- A query is written and executed to create a Retiring Titles table that contains the number of titles filled by employees who are retiring. 
  
 - The Retiring Titles table is exported as `retiring_titles.csv`. 
 
*Image 3.Retiring Titles*

![image](https://user-images.githubusercontent.com/112348240/202349440-40e55bbd-f848-4fc7-93fc-1f784d870d18.png)

## Deliverable 2: The Employees Eligible for the Mentorship Program 
## Deliverable 2 Instructions
  Using the ERD you created in this module as a reference and your knowledge of SQL queries, create a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965.
  In the Employee_Database_challenge.sql file, write a query to create a Mentorship Eligibility table that holds the employees who are eligible to participate in a mentorship program.

- Retrieve the `emp_no`, `first_name`, `last_name`, and `birth_date` columns from the Employees table.
- Retrieve the `from_date` and `to_date` columns from the Department Employee table.
- Retrieve the `title` column from the Titles table.
- Use a `DISTINCT ON` statement to retrieve the first occurrence of the employee number for each set of rows defined by the `ON ()` clause.
- Create a new table using the INTO clause.
- Join the Employees and the Department Employee tables on the primary key.
- Join the Employees and the Titles tables on the primary key.
- Filter the data on the `to_date` column to all the current employees, then filter the data on the `birth_date` columns to get all the employees whose birth dates are between January 1, 1965 and December 31, 1965.
- Order the table by the employee number.
- Export the Mentorship Eligibility table as `mentorship_eligibilty.csv` and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
- The image below looks like the one require for this challenge:

*Image 4. Mentorship Eligibilty*

![image](https://user-images.githubusercontent.com/112348240/202872590-69877115-a552-4076-83aa-06a3d0eccbf6.png)

## Deliverable 3: A written report on the employee database analysis 
## Deliverable 3 Instructions
  For this part of the Challenge,I’ll write a report to help the manager prepare for the upcoming "silver tsunami."

  The analysis should contain the following:

1. *Overview of the analysis:* Explain the purpose of this analysis.

    We are helping Bobby which has proven his SQL chops, his manager has given both of you two more assignments: determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. The main idea is write a report that summarizes your analysis and helps prepare Bobby’s manager for the “silver tsunami” as many current employees reach retirement age.
    
2. *Results*: Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.

    - After analyzing the data we fund that a big portion of the employees will be retiring anytime soon.
 
    - Below is the breakdown:
      
      - Total of 25916 "Senior Engineer",
      
      - Total of 24926 "Senior Staff",
      
      - Total of 9285 "Engineer",
      
      - Total of 7636 "Staff",
      
      - Total of 3603 "Technique Leader",
      
      - Total of 1090 "Assistant Engineer",
      
      - Total of 2 "Manager"

3. *Summary:* Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."

    - How many roles will need to be filled as the "silver tsunami" begins to make an impact?
    
      We will have a total of 72458 employees elegible to retire at any given time when upcoming "silver tsunami" begin. 
  
    - Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
    
      We wont have enough qualified ones, because we only have a total of 1000 qualify employees for mentorship. 

