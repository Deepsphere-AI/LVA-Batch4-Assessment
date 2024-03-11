CREATE TABLE L1_Sales_Records (
    sales_id INT PRIMARY KEY,
    product_id INT,
    customer_id INT,
    sales_date DATE,
    sales_amount DECIMAL(10, 2)
);
CREATE TABLE L1_Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    category VARCHAR(255),
    price DECIMAL(10, 2)
);
CREATE TABLE L1_Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(255),
    region VARCHAR(255)
);

INSERT INTO L1_Sales_Records (sales_id, product_id, customer_id, sales_date, sales_amount) VALUES
(1, 101, 201, '2024-01-15', 1200),
(2, 102, 202, '2024-01-17', 800),
(3, 103, 203, '2024-02-05', 450),
(4, 101, 201, '2024-02-12', 1500),
(5, 104, 204, '2024-02-20', 500);
INSERT INTO L1_Products (product_id, product_name, category, price) VALUES
(101, 'Alpha', 'Electronics', 1000),
(102, 'Beta', 'Home', 500),
(103, 'Gamma', 'Electronics', 400),
(104, 'Delta', 'Clothing', 300);
INSERT INTO L1_Customers (customer_id, customer_name, region) VALUES
(201, 'John Doe', 'North'),
(202, 'Jane Smith', 'South'),
(203, 'Alice Jones', 'East'),
(204, 'Bob Brown', 'West');

CREATE TABLE L2_Usage_Records (
    subscriber_id INT,
    data_usage DECIMAL(5, 2),
    call_duration INT,
    message_count INT,
    record_date DATE,
    PRIMARY KEY (subscriber_id, record_date)
);
CREATE TABLE L2_Subscribers (
    subscriber_id INT PRIMARY KEY,
    subscriber_name VARCHAR(255),
    plan_id INT,
    join_date DATE
);
CREATE TABLE L2_Service_Plans (
    plan_id INT PRIMARY KEY,
    plan_name VARCHAR(255),
    monthly_fee DECIMAL(5, 2)
);

INSERT INTO L2_Usage_Records (subscriber_id, data_usage, call_duration, message_count, record_date) VALUES
(1001, 2.5, 40, 30, '2024-02-01'),
(1002, 1.8, 30, 25, '2024-02-01'),
(1003, 3.0, 50, 40, '2024-02-01'),
(1001, 2.7, 35, 28, '2024-02-02'),
(1002, 1.9, 32, 22, '2024-02-02');
INSERT INTO L2_Subscribers (subscriber_id, subscriber_name, plan_id, join_date) VALUES
(1001, 'John Doe', 201, '2022-01-10'),
(1002, 'Jane Smith', 202, '2023-06-15'),
(1003, 'Alice Johnson', 201, '2021-08-05');
INSERT INTO L2_Service_Plans (plan_id, plan_name, monthly_fee) VALUES
(201, 'Basic Plan', 50),
(202, 'Premium Plan', 80),
(203, 'Family Plan', 70);

CREATE TABLE L3_Energy_Records (
    record_id INT PRIMARY KEY,
    household_id INT,
    energy_consumption DECIMAL(10, 2),
    time_slot VARCHAR(255),
    record_date DATE
);
CREATE TABLE L3_Households (
    household_id INT PRIMARY KEY,
    household_name VARCHAR(255),
    program_id INT
);
CREATE TABLE L3_Energy_Programs (
    program_id INT PRIMARY KEY,
    program_name VARCHAR(255),
    average_reduction_percentage DECIMAL(5, 2)
);

INSERT INTO L3_Energy_Records (record_id, household_id, energy_consumption, time_slot, record_date) VALUES
(1, 101, 15.2, 'Morning', '2024-02-01'),
(2, 102, 20.5, 'Afternoon', '2024-02-01'),
(3, 103, 18.3, 'Evening', '2024-02-01'),
(4, 101, 12.7, 'Night', '2024-02-01'),
(5, 102, 22.1, 'Morning', '2024-02-02');
INSERT INTO L3_Households (household_id, household_name, program_id) VALUES
(101, 'Smith Family', 301),
(102, 'Johnson Home', 302),
(103, 'Doe Residence', 301);
INSERT INTO L3_Energy_Programs (program_id, program_name, average_reduction_percentage) VALUES
(301, 'Green Energy Plan', 12.5),
(302, 'Sustainable Living', 15.0),
(303, 'Energy Saver Initiative', 10.0);

CREATE TABLE L4_Patients (
    patient_id INT PRIMARY KEY,
    patient_name VARCHAR(255),
    chronic_illness VARCHAR(255),
    admission_date DATE
);
CREATE TABLE L4_Treatments (
    treatment_id INT PRIMARY KEY,
    patient_id INT,
    treatment_name VARCHAR(255),
    treatment_effectiveness INT,
    FOREIGN KEY (patient_id) REFERENCES L4_Patients(patient_id)
);
CREATE TABLE L4_Hospital_Departments (
    department_id INT,
    department_name VARCHAR(255),
    patient_count INT,
    month VARCHAR(255),
    PRIMARY KEY (department_id, month)
);

INSERT INTO L4_Patients (patient_id, patient_name, chronic_illness, admission_date) VALUES
(1, 'John Doe', 'Diabetes', '2024-01-10'),
(2, 'Jane Smith', 'Hypertension', '2024-01-15'),
(3, 'Alice Johnson', 'Asthma', '2024-01-20'),
(4, 'Mike Brown', 'None', '2024-01-25'),
(5, 'Emily White', 'Arthritis', '2024-02-01');
INSERT INTO L4_Treatments (treatment_id, patient_id, treatment_name, treatment_effectiveness) VALUES
(101, 1, 'Insulin Therapy', 8),
(102, 2, 'Blood Pressure Meds', 7),
(103, 3, 'Inhaler Use', 9),
(104, 4, 'Physical Therapy', 6),
(105, 5, 'Pain Management', 8);
INSERT INTO L4_Hospital_Departments (department_id, department_name, patient_count, month) VALUES
(1, 'Cardiology', 55, 'January'),
(2, 'Pulmonology', 40, 'January'),
(3, 'Orthopedics', 60, 'January'),
(4, 'General Medicine', 45, 'January'),
(1, 'Cardiology', 50, 'February'),
(2, 'Pulmonology', 35, 'February'),
(3, 'Orthopedics', 65, 'February');

CREATE TABLE L5_Policyholders (
    policyholder_id INT PRIMARY KEY,
    policyholder_name VARCHAR(255),
    age INT
);
CREATE TABLE L5_Policies (
    policy_id INT PRIMARY KEY,
    policyholder_id INT,
    policy_type VARCHAR(255),
    premium_amount DECIMAL(10, 2),
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (policyholder_id) REFERENCES L5_Policyholders(policyholder_id)
);
CREATE TABLE L5_Claims (
    claim_id INT PRIMARY KEY,
    policy_id INT,
    claim_amount DECIMAL(10, 2),
    claim_filing_date DATE,
    claim_settlement_date DATE,
    FOREIGN KEY (policy_id) REFERENCES L5_Policies(policy_id)
);

INSERT INTO L5_Policyholders (policyholder_id, policyholder_name, age) VALUES
(1, 'John Doe', 34),
(2, 'Jane Smith', 29),
(3, 'Alice Johnson', 45),
(4, 'Mike Brown', 52),
(5, 'Emily White', 40);
INSERT INTO L5_Policies (policy_id, policyholder_id, policy_type, premium_amount, start_date, end_date) VALUES
(101, 1, 'Auto', 300.00, '2024-01-01', '2025-01-01'),
(102, 2, 'Life', 200.00, '2024-01-15', '2025-01-15'),
(103, 3, 'Health', 250.00, '2024-02-01', '2025-02-01'),
(104, 4, 'Home', 150.00, '2024-02-10', '2025-02-10'),
(105, 1, 'Life', 220.00, '2025-01-02', '2026-01-01');
INSERT INTO L5_Claims (claim_id, policy_id, claim_amount, claim_filing_date, claim_settlement_date) VALUES
(201, 101, 1200.00, '2024-04-05', '2024-04-20'),
(202, 103, 500.00, '2024-04-10', '2024-04-22'),
(203, 101, 1500.00, '2024-05-02', '2024-05-18'),
(204, 104, 300.00, '2024-05-10', '2024-05-25'),
(205, 101, 1000.00, '2024-06-01', '2024-06-15');


CREATE TABLE L6_user_activity (
    user_id INT PRIMARY KEY,
    signup_date DATETIME,
    last_login DATETIME
);

INSERT INTO L6_user_activity (user_id, signup_date, last_login)
VALUES
    (1001, '2022-06-01 12:00:00', '2022-07-05 12:00:00'),
    (1002, '2022-06-03 12:00:00', '2022-06-15 12:00:00'),
    (1003, '2022-06-02 12:00:00', '2022-06-15 12:00:00'),
    (1004, '2022-06-15 12:00:00', '2022-06-27 12:00:00'),
    (1005, '2022-06-16 12:00:00', '2022-07-22 12:00:00');

CREATE TABLE L6_employee_salary (
    employee_id INT PRIMARY KEY,
    Experience VARCHAR(50),
    salary INT
);


INSERT INTO L6_employee_salary (employee_id, Experience, salary)
VALUES
    (1, 'Junior', 10000),
    (9, 'Junior', 10000),
    (2, 'Senior', 20000),
    (11, 'Senior', 20000),
    (13, 'Senior', 50000),
    (4, 'Junior', 40000);
