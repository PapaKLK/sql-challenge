--List the department number for each employee along with that employee’s employee number, last name, first name, and department name

SELECT E."Employee_ID",E."first_name", E."last_name",DE."Employee_ID", D."Department_Name"
  FROM "Employees" E INNER JOIN "Department_Employee" DE
        ON E."Employee_ID" = DE."Employee_ID"
		INNER JOIN "Department" D
		ON DE."Department_ID" = D."Department_ID"
ORDER BY E."Employee_ID"		