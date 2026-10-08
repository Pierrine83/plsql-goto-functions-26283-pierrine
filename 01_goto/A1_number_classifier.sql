-- A1: Number Classifier
-- Student: Pierrine Nsabimana
-- Student ID: 26283

SET SERVEROUTPUT ON;

DECLARE
    v_number NUMBER := 15;
BEGIN
    IF v_number > 0 THEN
        GOTO positive_number;
    ELSIF v_number < 0 THEN
        GOTO negative_number;
    ELSE
        GOTO zero_number;
    END IF;

    <<positive_number>>
    DBMS_OUTPUT.PUT_LINE('The number is positive.');
    GOTO finished;

    <<negative_number>>
    DBMS_OUTPUT.PUT_LINE('The number is negative.');
    GOTO finished;

    <<zero_number>>
    DBMS_OUTPUT.PUT_LINE('The number is zero.');

    <<finished>>
    DBMS_OUTPUT.PUT_LINE('Number classification completed.');
END;
/