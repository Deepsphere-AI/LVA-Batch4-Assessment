-- Create Table for Q1_sales
CREATE TABLE Q1_sales (
    sale_id INT,
    product_category VARCHAR(255),
    location VARCHAR(255),
    amount DECIMAL(10, 2)
);

-- Insert data into Q1_sales
INSERT INTO Q1_sales VALUES
(1, 'Electronics', 'Downtown', 650),
(2, 'Electronics', 'Downtown', 150),
(3, 'Electronics', 'Uptown', 300),
(4, 'Clothing', 'Downtown', 400);

-- Create Table for Q1_discounts
CREATE TABLE Q1_discounts (
    product_category VARCHAR(255),
    location VARCHAR(255),
    discount_rate DECIMAL(3, 2)
);

-- Insert data into Q1_discounts
INSERT INTO Q1_discounts VALUES
('Electronics', 'Downtown', 0.10),
('Electronics', 'Downtown', 0.05),
('Clothing', 'Downtown', 0.08);

-- Create Table for Q2_yearly_sales
CREATE TABLE Q2_yearly_sales (
    product_category VARCHAR(255),
    quarter VARCHAR(10),
    sales_amount INT
);

-- Insert data into Q2_yearly_sales
INSERT INTO Q2_yearly_sales VALUES
('Electronics', 'Q1', 10000),
('Electronics', 'Q2', 15000),
('Clothing', 'Q1', 8000),
('Clothing', 'Q2', 12000);

-- Create Table for Q3_employee_sales
CREATE TABLE Q3_employee_sales (
    employee_id INT,
    employee_name VARCHAR(255),
    yearly_sales DECIMAL(10, 2)
);

-- Insert data into Q3_employee_sales
INSERT INTO Q3_employee_sales VALUES
(1, 'Alice', 105000),
(2, 'Bob', 75000),
(3, 'Charlie', 40000);


-- Create Table for Q4_customers
CREATE TABLE Q4_customers (
    customer_id INT,
    customer_name VARCHAR(255)
);

-- Insert data into Q4_customers
INSERT INTO Q4_customers VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie');

-- Create Table for Q4_orders
CREATE TABLE Q4_orders (
    order_id INT,
    customer_id INT,
    order_amount DECIMAL(10, 2)
);

-- Insert data into Q4_orders
INSERT INTO Q4_orders VALUES
(1, 1, 300),
(2, 1, 250),
(3, 2, 400),
(4, 3, 550);


-- Create Table for Q5_product_sales
CREATE TABLE Q5_product_sales (
    product_id INT,
    category VARCHAR(255),
    sales_volume INT,
    base_price DECIMAL(10, 2)
);

-- Insert data into Q5_product_sales
INSERT INTO Q5_product_sales VALUES
(1, 'Electronics', 100, 300),
(2, 'Electronics', 80, 200),
(3, 'Clothing', 150, 100),
(4, 'Clothing', 50, 150);


-- Create Table for Q6_students
CREATE TABLE Q6_students (
    student_id INT,
    name VARCHAR(255),
    credits_completed INT
);

-- Insert data into Q6_students
INSERT INTO Q6_students VALUES
(1, 'Alice', 108),
(2, 'Bob', 110),
(3, 'Charlie', 95);

-- Create Table for Q6_grades
CREATE TABLE Q6_grades (
    student_id INT,
    class_id INT,
    gpa DECIMAL(3, 2)
);

-- Insert data into Q6_grades
INSERT INTO Q6_grades VALUES
(1, 101, 3.9),
(2, 102, 3.7),
(3, 103, 4.0);


-- Create Table for Q7_books
CREATE TABLE Q7_books (
    book_id INT,
    author_id VARCHAR(10),
    title VARCHAR(255),
    publication_year INT
);

-- Insert data into Q7_books
INSERT INTO Q7_books VALUES
(1, 'A', 'New Horizons', 2023),
(2, 'B', 'Lost in Time', 2022),
(3, 'A', 'The Long Road', 2023);

-- Create Table for Q7_authors
CREATE TABLE Q7_authors (
    author_id VARCHAR(10),
    name VARCHAR(255)
);

-- Insert data into Q7_authors
INSERT INTO Q7_authors VALUES
('A', 'Alice Smith'),
('B', 'Bob Jones');


-- Create Table for Q8_campaigns
CREATE TABLE Q8_campaigns (
    campaign_id INT,
    campaign_name VARCHAR(255),
    start_date DATE,
    end_date DATE,
    budget DECIMAL(10, 2)
);

-- Insert data into Q8_campaigns
INSERT INTO Q8_campaigns VALUES
(1, 'Spring Promo', '2023-03-01', '2023-03-31', 10000),
(2, 'March Madness', '2023-03-15', '2023-03-31', 8000),
(3, 'April Awakening', '2023-04-01', '2023-04-30', 9000);

-- Create Table for Q8_new_customers
CREATE TABLE Q8_new_customers (
    customer_id INT,
    acquisition_date DATE,
    campaign_id INT
);

-- Insert data into Q8_new_customers
INSERT INTO Q8_new_customers VALUES
(101, '2023-03-05', 1),
(102, '2023-03-20', 2),
(103, '2023-03-22', 2),
(104, '2023-04-05', 3);


-- Create Table for Q9_developer_tasks
CREATE TABLE Q9_developer_tasks (
    developer_id INT,
    task_id VARCHAR(10),
    completion_date DATE
);

-- Insert data into Q9_developer_tasks
INSERT INTO Q9_developer_tasks VALUES
(1, 'T100', '2023-03-10'),
(1, 'T101', '2023-03-15'),
(2, 'T102', '2023-03-20'),
(2, 'T103', '2023-04-05'),
(1, 'T104', '2023-04-10');


-- Create Table for Q10_viewing_data
CREATE TABLE Q10_viewing_data (
    date DATE,
    hours_watched INT
);

-- Insert data into Q10_viewing_data
INSERT INTO Q10_viewing_data VALUES
('2023-03-01', 400),
('2023-03-02', 450),
('2023-04-01', 470),
('2023-04-02', 480);