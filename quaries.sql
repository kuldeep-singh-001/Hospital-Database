-- =========================================================
-- 1. SELECT 
-- =========================================================
-- All patients
SELECT * FROM Patients;

-- All doctors
SELECT * FROM Doctors;

-- All appointments
SELECT * FROM Appointments;

-- =========================================================
-- 2. SELECT specific columns
-- =========================================================
-- Patient names and phone numbers
SELECT first_name, last_name, phone FROM Patients;

-- Doctor names and specialties
SELECT first_name, last_name, specialty FROM Doctors;

-- Appointment date and status only
SELECT appointment_date, status FROM Appointments;

-- =========================================================
-- 3. WHERE (filtering)
-- =========================================================
-- Patients living in Delhi
SELECT * FROM Patients WHERE address LIKE '%Delhi%';

-- Doctors with specialty 'Cardiologist'
SELECT * FROM Doctors WHERE specialty = 'Cardiologist';

-- Appointments marked as 'Scheduled'
SELECT * FROM Appointments WHERE status = 'Scheduled';

-- =========================================================
-- 4. AND / OR
-- =========================================================
-- Female patients in Mumbai
SELECT * FROM Patients
WHERE gender = 'F' AND address LIKE '%Mumbai%';

-- Doctors who are Cardiologists OR Neurologists
SELECT * FROM Doctors
WHERE specialty = 'Cardiologist' OR specialty = 'Neurologist';

-- Patients from Delhi OR born after 1990
SELECT * FROM Patients
WHERE address LIKE '%Delhi%' OR dob > '1990-01-01';

-- =========================================================
-- 5. LIKE
-- =========================================================
-- Patients whose first name starts with 'P'
SELECT * FROM Patients WHERE first_name LIKE 'P%';

-- Doctors whose last name ends with 'i'
SELECT * FROM Doctors WHERE last_name LIKE '%i';

-- Patients whose address contains 'bad'
SELECT * FROM Patients WHERE address LIKE '%bad%';

-- =========================================================
-- 6. BETWEEN
-- =========================================================
-- Patients born between 1980 and 1995
SELECT first_name, last_name, dob FROM Patients
WHERE dob BETWEEN '1980-01-01' AND '1995-12-31';

-- Appointments scheduled between Sept 1 and Sept 10, 2025
SELECT * FROM Appointments
WHERE appointment_date BETWEEN '2025-09-01' AND '2025-09-10';

-- Doctors with phone numbers between '9876501002' and '9876501004'
SELECT * FROM Doctors
WHERE phone BETWEEN '9876501002' AND '9876501004';

-- =========================================================
-- 7. ORDER BY
-- =========================================================
-- Patients ordered by last name (A–Z)
SELECT * FROM Patients ORDER BY last_name ASC;

-- Doctors ordered by specialty (Z–A)
SELECT * FROM Doctors ORDER BY specialty DESC;

-- Appointments ordered by date (earliest first)
SELECT * FROM Appointments ORDER BY appointment_date ASC;

-- =========================================================
-- 8. LIMIT (with OFFSET)
-- =========================================================
-- First 3 patients
SELECT * FROM Patients LIMIT 3;

-- Next 2 patients after skipping the first 2
SELECT * FROM Patients LIMIT 2 OFFSET 2;

-- Top 2 most recent appointments
SELECT * FROM Appointments
ORDER BY appointment_date DESC
LIMIT 2;
