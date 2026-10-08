-- Function Testing Script
-- Student: Pierrine Nsabimana
-- Student ID: 26283

SET SERVEROUTPUT ON;

-- Test B1: Annual Salary
SELECT fn_annual_salary(450000) AS annual_salary
FROM dual;

-- Test B2: Years of Service
SELECT fn_years_of_service(DATE '2020-01-15') AS years_of_service
FROM dual;

-- Test B3: Calculate Tax
SELECT fn_calculate_tax(5400000) AS estimated_tax
FROM dual;

-- Test B4: Department Name
SELECT fn_dept_name(10) AS department_name
FROM dual;

-- Test C1: Payroll Validation
SELECT fn_validate_payroll(101) AS payroll_status
FROM dual;

SELECT fn_validate_payroll(999) AS invalid_employee_status
FROM dual;