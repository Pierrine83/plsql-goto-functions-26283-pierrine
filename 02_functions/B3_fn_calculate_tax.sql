-- B3: Tax Calculator Function
-- Student: Pierrine Nsabimana
-- Student ID: 26283

CREATE OR REPLACE FUNCTION fn_calculate_tax (
    p_annual_salary IN NUMBER
)
RETURN NUMBER
IS
    v_tax NUMBER := 0;
BEGIN
    IF p_annual_salary IS NULL OR p_annual_salary < 0 THEN
        RAISE_APPLICATION_ERROR(
            -20004,
            'Annual salary must be zero or greater.'
        );
    END IF;

    IF p_annual_salary <= 3600000 THEN
        v_tax := p_annual_salary * 0.10;

    ELSIF p_annual_salary <= 7200000 THEN
        v_tax := (3600000 * 0.10)
                 + ((p_annual_salary - 3600000) * 0.20);

    ELSE
        v_tax := (3600000 * 0.10)
                 + (3600000 * 0.20)
                 + ((p_annual_salary - 7200000) * 0.30);
    END IF;

    RETURN ROUND(v_tax, 2);
END;
/