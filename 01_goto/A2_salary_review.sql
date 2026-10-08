-- A2: Salary Review
-- Student: Pierrine Nsabimana
-- Student ID: 26283

SET SERVEROUTPUT ON;

DECLARE
    v_salary NUMBER := 450000;
BEGIN
    IF v_salary < 300000 THEN
        GOTO low_salary;
    ELSIF v_salary < 600000 THEN
        GOTO normal_salary;
    ELSE
        GOTO high_salary;
    END IF;

    <<low_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary category: LOW');
    GOTO finished;

    <<normal_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary category: NORMAL');
    GOTO finished;

    <<high_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary category: HIGH');

    <<finished>>
    DBMS_OUTPUT.PUT_LINE('Salary review completed.');
END;
/