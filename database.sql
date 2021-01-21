CREATE database employee_trackerDB;

USE employee_trackerDB;

CREATE TABLE department (
  id INT auto_increment NOT NULL,
  name VARCHAR(100) NULL,
  PRIMARY KEY (id)
);

CREATE TABLE role (
  id INT auto_increment NOT NULL,
  title VARCHAR(30) NULL,
  salary DECIMAL(10,4) NULL,
  PRIMARY KEY (id)
);

CREATE TABLE employee (
  id INT auto_increment NOT NULL,
  first_name VARCHAR(30) NULL,
  last_name VARCHAR(30) NULL,
  manager_id INT NULL,
  PRIMARY KEY (id)
);

SELECT * FROM department;
SELECT * FROM role;
xSELECT * FROM employee;

SELECT department.name, role.title, role.salary, employee.first_name, employee.last_name, employee.manager_id
FROM department INNER JOIN role INNER JOIN employee