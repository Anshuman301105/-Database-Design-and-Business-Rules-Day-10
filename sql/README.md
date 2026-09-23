# Employee Leave Management Database

## Overview

This project designs a PostgreSQL database for an **Employee Leave Management System**.

The system manages employee information, departments, leave types, leave balances, leave requests, and approval history.

## Objective

The main objective is to design a structured and reliable database for managing employee leave requests and approvals.

## Entities

* Employee
* Department
* Leave Type
* Leave Balance
* Leave Request
* Approval History

## Relationships

* Department → Employees
* Employee → Leave Balance
* Leave Type → Leave Balance
* Employee → Leave Request
* Leave Type → Leave Request
* Leave Request → Approval History
* Employee → Manager

## Database Features

* Primary Keys
* Foreign Keys
* NOT NULL constraints
* UNIQUE constraints
* CHECK constraints
* Data validation
* Referential integrity
* Relationship management
* Duplicate data prevention

## Business Rules

1. Employee must have sufficient leave balance.
2. Employee email must be unique.
3. Employee code must be unique.
4. Leave type name must be unique.
5. Leave end date cannot be before start date.
6. Leave dates cannot overlap.
7. Manager cannot approve their own leave.
8. Approved leave reduces balance.
9. Rejected leave does not reduce balance.
10. Cancelled approved leave restores balance.
11. Leave balance cannot be negative.
12. Leave request must belong to a valid employee.
13. Leave request must use a valid leave type.
14. Balance is maintained by employee, leave type, and year.
15. Approval history must reference a valid leave request.

## Database Design

The database uses separate tables for each major business entity.

This helps reduce duplicate data and makes the database easier to maintain.

Primary and foreign keys are used to connect related tables and maintain data integrity.

## Project Structure

```text
employee-leave-management/
│
├── README.md
│
├── sql/
│   ├── 01_create_tables.sql
│   ├── 02_insert_data.sql
│   └── 03_business_rules.sql
│
├── docs/
│   └── er-diagram.md
│
└── screenshots/
```

## SQL Scripts

### 01_create_tables.sql

Contains database table creation statements, primary keys, foreign keys, and constraints.

### 02_insert_data.sql

Contains sample data for employees, departments, leave types, balances, requests, and approval history.

### 03_business_rules.sql

Contains SQL queries and validations related to the defined business rules.

## How to Run

Create the database:

```sql
CREATE DATABASE employee_leave_management;
```

Connect to PostgreSQL:

```bash
psql -U postgres -d employee_leave_management
```

Run the SQL scripts:

```bash
psql -U postgres -d employee_leave_management -f sql/01_create_tables.sql
psql -U postgres -d employee_leave_management -f sql/02_insert_data.sql
psql -U postgres -d employee_leave_management -f sql/03_business_rules.sql
```

## Deliverables

* ER Diagram
* Database Schema
* SQL Scripts
* 15+ Business Rules
* Design Decisions
* Sample Data
* Database Constraints

## Learning Outcome

This project helps understand how to design a database for a real-world application using **entities, relationships, keys, constraints, and business rules**.

## Technology

**PostgreSQL | SQL | Git | GitHub**
