-- C1: Payroll Validator Function
-- Student: Pierrine Nsabimana
-- Student ID: 26283

CREATE OR REPLACE FUNCTION fn_validate_payroll (
    p_employee_id IN NUMBER
)
RETURN VARCHAR2
IS
    v_salary employees.salary%TYPE;
    v_department_id employees.department_id%TYPE;
BEGIN
    IF p_employee_id IS NULL THEN
        RETURN 'INVALID: Employee ID cannot be NULL';
    END IF;

    BEGIN
        SELECT salary, department_id
        INTO v_salary, v_department_id
        FROM employees
        WHERE employee_id = p_employee_id;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RETURN 'INVALID: Employee does not exist';
    END;

    IF v_salary IS NULL OR v_salary <= 0 THEN
        RETURN 'INVALID: Salary must be greater than zero';
    END IF;

    IF v_department_id IS NULL THEN
        RETURN 'INVALID: Department ID cannot be NULL';
    END IF;

    RETURN 'VALID: Payroll information is correct';

END;
/