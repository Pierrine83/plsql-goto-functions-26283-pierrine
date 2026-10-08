-- B1: Annual Salary Function
-- Student: Pierrine Nsabimana
-- Student ID: 26283

CREATE OR REPLACE FUNCTION fn_annual_salary (
    p_monthly_salary IN NUMBER
)
RETURN NUMBER
IS
BEGIN
    IF p_monthly_salary IS NULL OR p_monthly_salary < 0 THEN
        RAISE_APPLICATION_ERROR(
            -20001,
            'Monthly salary must be zero or greater.'
        );
    END IF;

    RETURN p_monthly_salary * 12;
END;
/