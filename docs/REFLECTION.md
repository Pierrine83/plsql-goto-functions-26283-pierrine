# C2: Reflection on GOTO Statements and Functions

**Student Name:** Pierrine Nsabimana
**Student ID:** 26283
**Course:** Database Development with PL/SQL (INSY 8311)

## 1. When is GOTO Useful?

The GOTO statement transfers program execution to a labeled statement within the same PL/SQL block. It can be useful in limited situations where a direct jump simplifies control flow. However, it should be used carefully because excessive use can make programs difficult to read, understand, and maintain.

## 2. Why Can GOTO Be Dangerous?

GOTO can make program logic confusing when execution jumps between different sections of code. It can reduce readability and make debugging more difficult. Oracle PL/SQL also restricts jumps into certain structures, such as an IF statement or a loop, which can result in an illegal GOTO compilation error.

## 3. Why Are Functions Better for Reusable Logic?

Functions allow developers to define logic once and reuse it in different PL/SQL blocks and SQL queries. They make programs more organized, reduce repeated code, and simplify testing and maintenance. In this assignment, functions were used to calculate annual salary, calculate years of service, estimate tax, retrieve department names, and validate payroll information.

## 4. What Did I Learn?

Through this assignment, I learned how to use GOTO statements and labels, identify and correct an illegal GOTO statement, and rewrite logic using conditional statements without GOTO. I also learned how to create, compile, and test PL/SQL functions and call them from SQL SELECT statements. Finally, I practiced validating employee payroll information and handling invalid input or missing employee records.

## Conclusion

GOTO statements demonstrate how execution can be redirected in PL/SQL, but structured programming techniques are generally easier to maintain. Reusable functions provide a clearer way to organize common operations and apply consistent business rules across a database application.
