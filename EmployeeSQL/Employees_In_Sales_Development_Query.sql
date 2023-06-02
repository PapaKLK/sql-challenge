-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name

SELECT E."Employee_ID", E."last_name",E."first_name",D."Department_Name"
  FROM "Employees" E
       INNER JOIN "Department_Employee" DE
	      ON E."Employee_ID" = DE."Employee_ID"
	   INNER JOIN "Department" D
	     ON D."Department_ID" = DE."Department_ID"
	WHERE D."Department_Name" IN ('Sales','Development')
;

