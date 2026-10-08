# PL/SQL GOTO Statements and Functions

## Student Information

- **Student Name:** Pierrine Nsabimana
- **Student ID:** 26283
- **Course:** Database Development with PL/SQL (INSY 8311)
- **Database:** Oracle Database 21c Express Edition
- **Tool:** Oracle SQL Developer

## Assignment Overview

This assignment explores GOTO statements, labels, conditional logic, and user-defined functions in Oracle PL/SQL.

The exercises demonstrate how to use GOTO statements, identify and correct illegal GOTO usage, rewrite logic without GOTO, create reusable functions, call functions from SQL queries, and validate employee payroll information.

## Repository Structure

```text
plsql-goto-functions-26283-pierrine/
├── README.md
├── .gitignore
├── 00_setup/
│   └── create_tables.sql
├── 01_goto/
│   ├── A1_number_classifier.sql
│   ├── A2_salary_review.sql
│   ├── A3_illegal_goto.sql
│   └── A4_rewrite_no_goto.sql
├── 02_functions/
│   ├── B1_fn_annual_salary.sql
│   ├── B2_fn_years_of_service.sql
│   ├── B3_fn_calculate_tax.sql
│   ├── B4_fn_dept_name.sql
│   └── C1_fn_validate_payroll.sql
├── 03_tests/
│   └── B5_functions_in_select.sql
├── screenshots/
│   ├── A1_output.png
│   ├── A2_output.png
│   ├── A3_error_and_fix.png
│   ├── A4_output.png
│   ├── B5_select_output.png
│   └── C1_output.png
└── docs/
    └── REFLECTION.md