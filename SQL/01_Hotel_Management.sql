-- ======================================================
-- PHASE 1: HOTEL MANAGEMENT SYSTEM
-- ======================================================

-- 1. Table Creation
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

CREATE TABLE bookings (
    booking_id INT PRIMARY KEY,
    user_id INT,
    room_type VARCHAR(50),
    booking_date DATE,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE booking_commercials (
    booking_id INT,
    item_id INT,
    quantity INT,
    rate DECIMAL(10, 2),
    FOREIGN KEY (booking_id) REFERENCES bookings(booking_id)
);

-- 2. Data Insertion
INSERT INTO users VALUES (1, 'John Doe', 'john@example.com', '1234567890');
INSERT INTO users VALUES (2, 'Alice Smith', 'alice@example.com', '9876543210');
INSERT INTO users VALUES (3, 'Bob Wilson', 'bob@example.com', '5551234567');

INSERT INTO bookings VALUES (101, 1, 'Deluxe', '2021-11-15');
INSERT INTO bookings VALUES (102, 2, 'Suite', '2021-11-20');
INSERT INTO bookings VALUES (103, 3, 'Single', '2021-12-05');
INSERT INTO bookings VALUES (104, 1, 'Deluxe', '2021-11-25');

INSERT INTO booking_commercials VALUES (101, 501, 2, 600.00);
INSERT INTO booking_commercials VALUES (102, 502, 1, 1500.00);
INSERT INTO booking_commercials VALUES (103, 503, 3, 300.00);
INSERT INTO booking_commercials VALUES (104, 501, 1, 600.00);

-- 3. Analytical Queries

-- Q3: Find all bookings with total bills greater than 1000
SELECT booking_id, SUM(quantity * rate) AS total_bill
FROM booking_commercials
GROUP BY booking_id
HAVING total_bill > 1000;

-- Q5: Find the 2nd Highest Bill
SELECT booking_id, SUM(quantity * rate) AS total_bill
FROM booking_commercials
GROUP BY booking_id
ORDER BY total_bill DESC
LIMIT 1 OFFSET 1;
