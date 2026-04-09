
-- PHASE 1: CLINIC MANAGEMENT SYSTEM

-- 1. Table Creation
CREATE TABLE clinic_sales (
    sale_id INT PRIMARY KEY,
    sale_date DATE,
    sales_channel VARCHAR(50), 
    amount DECIMAL(10, 2)
);

CREATE TABLE clinic_expenses (
    expense_id INT PRIMARY KEY,
    expense_date DATE,
    category VARCHAR(50), 
    amount DECIMAL(10, 2)
);

-- 2. Data Insertion
INSERT INTO clinic_sales (sale_id, sale_date, sales_channel, amount) VALUES 
(1, '2024-01-10', 'Online', 5000.00),
(2, '2024-01-15', 'Walk-in', 3000.00),
(3, '2024-02-05', 'Online', 4500.00),
(4, '2024-02-20', 'Walk-in', 2500.00);

INSERT INTO clinic_expenses (expense_id, expense_date, category, amount) VALUES 
(1, '2024-01-05', 'Rent', 2000.00),
(2, '2024-01-20', 'Supplies', 1200.00),
(3, '2024-02-01', 'Rent', 2000.00),
(4, '2024-02-15', 'Salaries', 3500.00);

-- 3. Analytical Queries

-- Q1: Revenue by Sales Channel
SELECT sales_channel, SUM(amount) AS total_revenue
FROM clinic_sales
GROUP BY sales_channel;

-- Q3: Monthly Profit/Loss Calculation
-- (Calculated as Total Sales - Total Expenses for each month)
SELECT 
    s.month, 
    s.total_revenue,
    e.total_expense,
    (s.total_revenue - e.total_expense) AS net_profit
FROM 
    (SELECT strftime('%Y-%m', sale_date) AS month, SUM(amount) AS total_revenue 
     FROM clinic_sales GROUP BY month) s
JOIN 
    (SELECT strftime('%Y-%m', expense_date) AS month, SUM(amount) AS total_expense 
     FROM clinic_expenses GROUP BY month) e
ON s.month = e.month;
