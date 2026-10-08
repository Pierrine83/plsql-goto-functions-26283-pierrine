-- B2: Years of Service Function
-- Student: Pierrine Nsabimana
-- Student ID: 26283

CREATE OR REPLACE FUNCTION fn_years_of_service (
    p_hire_date IN DATE
)
RETURN NUMBER
IS
BEGIN
    IF p_hire_date IS NULL THEN
        RAISE_APPLICATION_ERROR(
            -20002,
            'Hire date cannot be null.'
        );
    END IF;

    IF p_hire_date > TRUNC(SYSDATE) THEN
        RAISE_APPLICATION_ERROR(
            -20003,
            'Hire date cannot be in the future.'
        );
    END IF;

    RETURN TRUNC(
        MONTHS_BETWEEN(TRUNC(SYSDATE), p_hire_date) / 12
    );
END;
/