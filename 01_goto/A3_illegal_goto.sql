-- A3: Illegal GOTO and Fix
-- Student: Pierrine Nsabimana
-- Student ID: 26283

SET SERVEROUTPUT ON;

-- PART 1: INTENTIONALLY ILLEGAL GOTO
-- This block demonstrates an illegal jump into an IF statement.

BEGIN
    GOTO inside_if;

    IF 1 = 1 THEN
        <<inside_if>>
        DBMS_OUTPUT.PUT_LINE('Inside IF statement.');
    END IF;
END;
/

-- PART 2: CORRECTED GOTO
-- The label is placed outside the IF statement.

BEGIN
    GOTO valid_label;

    DBMS_OUTPUT.PUT_LINE('This line is skipped.');

    <<valid_label>>
    DBMS_OUTPUT.PUT_LINE('The GOTO statement works correctly.');
END;
/