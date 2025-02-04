CREATE DATABASE performance_monitoring;
USE performance_monitoring;

-- Employee Performance Table
CREATE TABLE employee_performance (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    tasks_completed INT,
    efficiency_score DECIMAL(5,2)
);

-- Sales Performance Table
CREATE TABLE sales_performance (
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    revenue DECIMAL(10,2),
    date DATE,
    FOREIGN KEY (employee_id) REFERENCES employee_performance(employee_id)
);

-- Operations Efficiency Table
CREATE TABLE operations_efficiency (
    operation_id INT PRIMARY KEY AUTO_INCREMENT,
    process_name VARCHAR(100),
    execution_time DECIMAL(5,2),
    success_rate DECIMAL(5,2)
);

-- System Uptime Table
CREATE TABLE system_uptime (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    uptime_percentage DECIMAL(5,2),
    downtime_hours DECIMAL(5,2),
    log_date DATE
);
