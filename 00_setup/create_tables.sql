-- Individual Assignment III
-- Course: INSY 8311
-- Student: Pierrine Nsabimana
-- Student ID: 26283
-- Purpose: Create departments and employees tables

SET SERVEROUTPUT ON;

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE employees CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE departments CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
END;
/

CREATE TABLE departments (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(100) NOT NULL
);

CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    salary NUMBER(10,2) NOT NULL,
    hire_date DATE NOT NULL,
    department_id NUMBER,
    CONSTRAINT fk_employee_department
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id),
    CONSTRAINT chk_employee_salary
        CHECK (salary >= 0)
);

INSERT INTO departments VALUES (10, 'IT');
INSERT INTO departments VALUES (20, 'Finance');
INSERT INTO departments VALUES (30, 'Human Resources');
INSERT INTO departments VALUES (40, 'Marketing');

INSERT INTO employees VALUES
(101, 'Alice', 'Mugisha', 450000, DATE '2020-01-15', 10);

INSERT INTO employees VALUES
(102, 'Bob', 'Niyonzima', 650000, DATE '2018-06-10', 20);

INSERT INTO employees VALUES
(103, 'Claudine', 'Uwase', 350000, DATE '2022-03-01', 10);

INSERT INTO employees VALUES
(104, 'David', 'Habimana', 800000, DATE '2015-09-20', 30);

INSERT INTO employees VALUES
(105, 'Eric', 'Nsengimana', 250000, DATE '2024-02-12', 40);

INSERT INTO employees VALUES
(106, 'Grace', 'Iradukunda', 550000, DATE '2019-11-05', 20);

COMMIT;

SELECT * FROM departments ORDER BY department_id;

SELECT * FROM employees ORDER BY employee_id;