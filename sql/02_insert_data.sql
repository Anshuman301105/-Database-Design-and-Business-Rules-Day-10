-- ============================================
-- DAY 10 - EMPLOYEE LEAVE MANAGEMENT SYSTEM
-- ALL INSERTION DATA
-- ============================================


-- ============================================
-- 1. INSERT DEPARTMENTS
-- ============================================

INSERT INTO department
(department_name, description)
VALUES
('Engineering', 'Software development and engineering team'),
('Human Resources', 'Employee and organizational management'),
('Finance', 'Financial operations and accounting'),
('Marketing', 'Marketing and promotional activities'),
('Sales', 'Sales and customer management');


-- ============================================
-- 2. INSERT ROLES
-- ============================================

INSERT INTO role
(role_name, description)
VALUES
('Software Engineer', 'Develops and maintains software applications'),
('HR Manager', 'Manages human resource activities'),
('Engineering Manager', 'Manages engineering team and projects'),
('Accountant', 'Handles financial records and accounting'),
('Marketing Manager', 'Manages marketing activities'),
('Sales Executive', 'Handles sales and customer relationships'),
('Team Lead', 'Leads a software engineering team');


-- ============================================
-- 3. INSERT EMPLOYEES - MANAGERS FIRST
-- ============================================

INSERT INTO employee
(
    employee_name,
    email,
    phone,
    hire_date,
    department_id,
    role_id,
    manager_id,
    employment_status
)
VALUES
(
    'Rahul Sharma',
    'rahul.sharma@example.com',
    '9876500001',
    '2023-01-10',
    1,
    3,
    NULL,
    'Active'
),
(
    'Priya Singh',
    'priya.singh@example.com',
    '9876500002',
    '2022-05-15',
    2,
    2,
    NULL,
    'Active'
),
(
    'Amit Verma',
    'amit.verma@example.com',
    '9876500003',
    '2021-08-20',
    3,
    4,
    NULL,
    'Active'
),
(
    'Neha Gupta',
    'neha.gupta@example.com',
    '9876500004',
    '2023-03-12',
    4,
    5,
    NULL,
    'Active'
);


-- ============================================
-- 4. INSERT EMPLOYEES - STAFF
-- ============================================

INSERT INTO employee
(
    employee_name,
    email,
    phone,
    hire_date,
    department_id,
    role_id,
    manager_id,
    employment_status
)
VALUES
(
    'Anshuman Maurya',
    'anshuman.maurya@example.com',
    '9876500005',
    '2025-01-10',
    1,
    1,
    1,
    'Active'
),
(
    'Rohit Kumar',
    'rohit.kumar@example.com',
    '9876500006',
    '2024-06-15',
    1,
    1,
    1,
    'Active'
),
(
    'Sneha Patel',
    'sneha.patel@example.com',
    '9876500007',
    '2024-04-20',
    2,
    1,
    2,
    'Active'
),
(
    'Vikas Yadav',
    'vikas.yadav@example.com',
    '9876500008',
    '2023-09-10',
    3,
    4,
    3,
    'Active'
),
(
    'Pooja Sharma',
    'pooja.sharma@example.com',
    '9876500009',
    '2026-01-15',
    4,
    5,
    4,
    'Onboarding'
),
(
    'Karan Singh',
    'karan.singh@example.com',
    '9876500010',
    '2025-07-01',
    5,
    6,
    1,
    'Active'
);


-- ============================================
-- 5. INSERT LEAVE TYPES
-- ============================================

INSERT INTO leave_type
(
    leave_type_name,
    description,
    max_days_per_year,
    requires_approval
)
VALUES
(
    'Casual Leave',
    'Leave for personal or casual requirements',
    12,
    TRUE
),
(
    'Sick Leave',
    'Leave for illness or medical reasons',
    10,
    TRUE
),
(
    'Earned Leave',
    'Paid leave earned by employees',
    20,
    TRUE
),
(
    'Maternity Leave',
    'Leave provided for maternity purposes',
    180,
    TRUE
),
(
    'Unpaid Leave',
    'Leave without salary deduction from leave balance',
    30,
    FALSE
);


-- ============================================
-- 6. INSERT LEAVE BALANCES
-- ============================================

INSERT INTO leave_balance
(
    employee_id,
    leave_type_id,
    leave_year,
    allocated_days,
    used_days,
    remaining_days
)
VALUES

-- Rahul Sharma
(1, 1, 2026, 12, 2, 10),
(1, 2, 2026, 10, 1, 9),
(1, 3, 2026, 20, 5, 15),

-- Anshuman Maurya
(5, 1, 2026, 12, 2, 10),
(5, 2, 2026, 10, 1, 9),
(5, 3, 2026, 20, 4, 16),

-- Rohit Kumar
(6, 1, 2026, 12, 3, 9),
(6, 2, 2026, 10, 0, 10),
(6, 3, 2026, 20, 2, 18),

-- Sneha Patel
(7, 1, 2026, 12, 1, 11),
(7, 2, 2026, 10, 2, 8),
(7, 3, 2026, 20, 0, 20),

-- Vikas Yadav
(8, 1, 2026, 12, 4, 8),
(8, 2, 2026, 10, 1, 9),
(8, 3, 2026, 20, 3, 17),

-- Pooja Sharma
(9, 1, 2026, 12, 0, 12),
(9, 2, 2026, 10, 1, 9),
(9, 3, 2026, 20, 2, 18),

-- Karan Singh
(10, 1, 2026, 12, 2, 10),
(10, 2, 2026, 10, 0, 10),
(10, 3, 2026, 20, 1, 19);


-- ============================================
-- 7. INSERT LEAVE REQUESTS
-- ============================================

INSERT INTO leave_request
(
    employee_id,
    leave_type_id,
    start_date,
    end_date,
    total_days,
    reason,
    status
)
VALUES
(
    5,
    1,
    '2026-09-21',
    '2026-09-22',
    2,
    'Personal work',
    'Pending'
),
(
    6,
    2,
    '2026-10-05',
    '2026-10-06',
    2,
    'Medical rest',
    'Approved'
),
(
    7,
    1,
    '2026-10-12',
    '2026-10-13',
    2,
    'Personal work',
    'Rejected'
),
(
    8,
    3,
    '2026-11-02',
    '2026-11-04',
    3,
    'Family function',
    'Cancelled'
);


-- ============================================
-- 8. UPDATE CANCELLED REQUEST
-- ============================================

UPDATE leave_request
SET cancelled_at = CURRENT_TIMESTAMP
WHERE leave_request_id = 4;


-- ============================================
-- 9. INSERT APPROVAL HISTORY
-- ============================================

INSERT INTO approval_history
(
    leave_request_id,
    approver_id,
    action,
    comments
)
VALUES
(
    1,
    1,
    'Approved',
    'Leave approved by manager'
),
(
    3,
    2,
    'Rejected',
    'Leave rejected due to team requirements'
),
(
    4,
    1,
    'Cancelled',
    'Leave request cancelled by employee'
);

