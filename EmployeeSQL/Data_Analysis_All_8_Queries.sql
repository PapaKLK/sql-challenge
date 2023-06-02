-- 1. List the employee number, last name, fi rst name, sex, and salary of each employee.
SELECT E."Employee_ID",E."last_name",E."first_name",E."sex",S."Salary_Amount"
  FROM "Employees" E
  		INNER JOIN "Salaries" S
		  ON E."Employee_ID" = S."Employee_ID"
ORDER BY E."Employee_ID"
;
-- 2.  List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT "first_name","last_name","hire_date"
  FROM "Employees"
 WHERE "hire_date" BETWEEN '1986-01-01' AND '1986-12-31' 
 ORDER BY "hire_date" 
;


-- 3.  List the manager of each department along with their 
--     department number, department name, employee number,last name, and first name.

SELECT D."Department_ID",D."Department_Name",DM."Employee_ID",
       E."last_name" as Manager_Last_Name,E."first_name" as Manager_First_Name
  FROM  "Department" D
        INNER JOIN "Department_Manager" DM
		  ON D."Department_ID" = DM."Department_ID"
		INNER JOIN "Employees" E
		  ON DM."Employee_ID" = E."Employee_ID"
;

-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name

SELECT E."Employee_ID",E."first_name", E."last_name",DE."Employee_ID", D."Department_Name"
  FROM "Employees" E INNER JOIN "Department_Employee" DE
        ON E."Employee_ID" = DE."Employee_ID"
		INNER JOIN "Department" D
		ON DE."Department_ID" = D."Department_ID"
;

-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name beginswith the letter B

SELECT "first_name","last_name", "sex"
  FROM "Employees"
 WHERE "first_name" = 'Hercules'
   AND "last_name" LIKE 'B%'
;

--6. List each employee in the Sales department, including their employee number, last name, and first name

SELECT E."Employee_ID", E."last_name",E."first_name",D."Department_Name"
  FROM "Employees" E
       INNER JOIN "Department_Employee" DE
	      ON E."Employee_ID" = DE."Employee_ID"
	   INNER JOIN "Department" D
	     ON D."Department_ID" = DE."Department_ID"
	WHERE D."Department_Name" = 'Sales'
;

-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name

SELECT E."Employee_ID", E."last_name",E."first_name",D."Department_Name"
  FROM "Employees" E
       INNER JOIN "Department_Employee" DE
	      ON E."Employee_ID" = DE."Employee_ID"
	   INNER JOIN "Department" D
	     ON D."Department_ID" = DE."Department_ID"
	WHERE D."Department_Name" IN ('Sales','Development')
;

-- 8 List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)

SELECT "last_name", COUNT(*) AS number_of_occurances
  FROM "Employees"
 GROUP BY "last_name"
 ORDER BY number_of_occurances DESC
;

		