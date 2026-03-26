-- Create a database
CREATE DATABASE IF NOT EXISTS college_fees;
USE college_fees;

-- Remove the old table if it already exists
DROP TABLE IF EXISTS semester_status;

-- Create a table
CREATE TABLE semester_status (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    semester_name VARCHAR(20) NOT NULL,
    fee_amount DECIMAL(8,2) NOT NULL,
    current_status ENUM('paid','unpaid') NOT NULL,
    payment_date DATE
);
