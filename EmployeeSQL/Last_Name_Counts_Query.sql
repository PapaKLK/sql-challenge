-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)

SELECT "last_name", COUNT(*) AS number_of_occurances
  FROM "Employees"
 GROUP BY "last_name"
 ORDER BY number_of_occurances DESC