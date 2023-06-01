-- Create the Department Table
CREATE TABLE "Department" (
    "Department_ID" VARCHAR(4)   NOT NULL,
    "Department_Name" VARCHAR(100)   NOT NULL,
    CONSTRAINT "pk_Department" PRIMARY KEY (
        "Department_ID"
     )
);
-- Create the Titles Table
CREATE TABLE "Titles" (
    "Title_ID" VARCHAR(5)   NOT NULL,
    "Title_Name" Varchar(50)   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "Title_ID"
     )
);
-- Create the Employees Table
CREATE TABLE "Employees" (
    "Employee_ID" INT   NOT NULL,
    "Title_ID" VARCHAR(5)   NOT NULL,
    "birth_date" Date   NOT NULL,
    "first_name" Varchar(50)   NOT NULL,
    "last_name" Varchar(50)   NOT NULL,
    "sex" Char(1)   NOT NULL,
    "hire_date" Date   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "Employee_ID"
     )
);

-- Create the table that matches the Employees and Departments together
CREATE TABLE "Department_Employee" (
    "Employee_ID" INT   NOT NULL,
    "Department_ID" VARCHAR(4)   NOT NULL,
    CONSTRAINT "pk_Department_Employee" PRIMARY KEY (
        "Employee_ID","Department_ID"
     )
);

-- Create the table that houses the department managers
CREATE TABLE "Department_Manager" (
    "Department_ID" VARCHAR(4)   NOT NULL,
    "Employee_ID" INT   NOT NULL,
    CONSTRAINT "pk_Department_Manager" PRIMARY KEY (
        "Department_ID","Employee_ID"
     )
);

-- Create the table that houses the employee salaries
CREATE TABLE "Salaries" (
    "Employee_ID" INT   NOT NULL,
    "Salary_Amount" INT   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "Employee_ID"
     )
);

------  Add Foreign Keys to enforce referential integrity

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_Title_ID" FOREIGN KEY("Title_ID")
REFERENCES "Titles" ("Title_ID");

ALTER TABLE "Department_Employee" ADD CONSTRAINT "fk_Department_Employee_Employee_ID" FOREIGN KEY("Employee_ID")
REFERENCES "Employees" ("Employee_ID");

ALTER TABLE "Department_Employee" ADD CONSTRAINT "fk_Department_Employee_Department_ID" FOREIGN KEY("Department_ID")
REFERENCES "Department" ("Department_ID");

ALTER TABLE "Department_Manager" ADD CONSTRAINT "fk_Department_Manager_Department_ID" FOREIGN KEY("Department_ID")
REFERENCES "Department" ("Department_ID");

ALTER TABLE "Department_Manager" ADD CONSTRAINT "fk_Department_Manager_Employee_ID" FOREIGN KEY("Employee_ID")
REFERENCES "Employees" ("Employee_ID");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_Employee_ID" FOREIGN KEY("Employee_ID")
REFERENCES "Employees" ("Employee_ID");

