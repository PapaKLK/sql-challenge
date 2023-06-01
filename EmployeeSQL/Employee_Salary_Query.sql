-- 1. List the employee number, last name, fi rst name, sex, and salary of each employee.
SELECT E."Employee_ID",E."last_name",E."first_name",E."sex",S."Salary_Amount"
  FROM "Employees" E
  		INNER JOIN "Salaries" S
		  ON E."Employee_ID" = S."Employee_ID"
ORDER BY E."Employee_ID"