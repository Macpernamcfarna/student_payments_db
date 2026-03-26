USE college_fees;

-- 1. Show all students
SELECT * FROM semester_status;

-- 2. Show only unpaid students
SELECT id, first_name, last_name, fee_amount, semester_name, payment_date
FROM semester_status
WHERE current_status = 'unpaid';

-- 3. Total fees collected
SELECT SUM(fee_amount) AS total_fees_collected
FROM semester_status
WHERE current_status = 'paid';

-- 4. Total unpaid fees
SELECT SUM(fee_amount) AS total_fees_unpaid
FROM semester_status
WHERE current_status = 'unpaid';

-- 5. Count of paid vs unpaid students
SELECT current_status, COUNT(*) AS student_count
FROM semester_status
GROUP BY current_status;

-- 6. Average fee per student
SELECT AVG(fee_amount) AS average_fee
FROM semester_status;

-- 7. Highest and lowest fee
SELECT MAX(600) AS highest_fee, MIN(100) AS lowest_fee
FROM semester_status;

-- 8. List students by payment date (latest first)
SELECT first_name, last_name, fee_amount, current_status, payment_date
FROM semester_status
ORDER BY payment_date DESC;

-- 9. Total fees collected per semester
SELECT semester_name, SUM(fee_amount) AS total_fees
FROM semester_status
WHERE current_status = 'paid'
GROUP BY semester_name;
