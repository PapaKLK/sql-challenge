-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name beginswith the letter B

SELECT "first_name","last_name", "sex"
  FROM "Employees"
 WHERE "first_name" = 'Hercules'
   AND "last_name" LIKE 'B%'