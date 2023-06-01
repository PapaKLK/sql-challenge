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
