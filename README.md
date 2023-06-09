# sql-challenge
KU Bootcamp Module 9 Challenge - SQL Challenge

### Entity Relationship Diagram
-  Stored under sql-challenge/EmployeeSQL/Department Employees ERD.png
-  Column names were modified somewhat to promote consistency and clarity across the attributes in the different entities.

### SQL to create the tables
-  Stored under sql-challenge/EmployeeSQL/Department_Employee_Create_Table_DDL.sql

### Execution Statistics of Loading the Tables
-  Data was loaded using the import facility in PGAdmin from the supplied csv files
-  Import Statistics stored under sql-challenge/EmployeeSQL/Execution_Statistics_For_Importing_Data_From_CSV_to_Tables.png
-  Screen Print of Number of rows that exist in the table are stored under sql-challenge/EmployeeSQL/Number_of_Rows_After_Data_Inserted.png

##  Data Analysis Queries and the Results:

### Note 
    -  All 8 Data Analysis Queries are stored in file EmployeeSQL/Data_Analysis_All_8_Queries.sql.  
       In addition, the queries are also stored in individual files as listed below along with 
       the results of each query in a corresponding csv file.
    
1.  List the employee number, last name, fi rst name, sex, and salary of each employee.
- Query in EmployeeSQL/Employee_Salary_Query.sql
- Results in EmployeeSQL/Employee_Salary_Query_Results.csv

2.  List the first name, last name, and hire date for the employees who were hired in 1986.
- Query in EmployeeSQL/Employee_1986_HireDate_Query.sql
- Results in EmployeeSQL/Employee_1986_HireDate_Query_Results.csv

3. List the manager of each department along with their department number, department name, employee number,last name, and first name
- Query in EmployeeSQL/Department_Manager_Query.sql
- Results in EmployeeSQL/Department_Manager_Query_Results.csv

4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name
- Query in EmployeeSQL/Employee_Department_Query.sql
- Results in EmployeeSQL/Employee_Department_Query_Results.csv

5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name beginswith the letter B
- Query in EmployeeSQL/Employees_Name_Hercules_B_Query.sql
- Results in EmployeeSQL/Employees_Name_Hercules_B_Query_Results.csv

6. List each employee in the Sales department, including their employee number, last name, and first name
-  Query in EmployeeSQL/Employees_In_Sales_Query.sql
-  Results in EmployeeSQL/Employees_In_Sales_Query_Results.csv

7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
-  Query in EmployeeSQL/Employees_In_Sales_Development_Query.sql
-  Results in EmployeeSQL/Employees_In_Sales_Development_Query_Results.csv

8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
-  Query in EmployeeSQL/Last_Name_Counts_Query.sql
-  Results in EmployeeSQL/Last_Name_Counts_Query_Results.csv
