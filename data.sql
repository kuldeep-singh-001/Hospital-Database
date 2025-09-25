PRAGMA foreign_keys = ON;

-- Patients
INSERT INTO Patients (first_name, last_name, dob, gender, phone, address) VALUES
('Amit', 'Shah', '1990-02-15', 'M', '9876500001', 'Delhi'),
('Neha', 'Kapoor', '1985-06-20', 'F', '9876500002', 'Mumbai'),
('Ravi', 'Reddy', '1975-10-05', 'M', '9876500003', 'Hyderabad'),
('Priya', 'Iyer', '1993-12-11', 'F', '9876500004', 'Chennai'),
('Suresh', 'Patel', '2000-03-08', 'M', '9876500005', 'Ahmedabad');

-- Doctors
INSERT INTO Doctors (first_name, last_name, specialty, phone, email) VALUES
('Arun', 'Mehta', 'Cardiologist', '9876501001', 'arun.mehta@hospital.com'),
('Sunita', 'Joshi', 'Dermatologist', '9876501002', 'sunita.joshi@hospital.com'),
('Vikram', 'Nair', 'Neurologist', '9876501003', 'vikram.nair@hospital.com'),
('Meera', 'Singh', 'General Physician', '9876501004', 'meera.singh@hospital.com');

-- Appointments
INSERT INTO Appointments (patient_id, doctor_id, appointment_date, reason, status) VALUES
(1, 1, '2025-09-01', 'Heart checkup', 'Completed'),
(2, 2, '2025-09-05', 'Skin rash', 'Scheduled'),
(3, 3, '2025-09-10', 'Migraine', 'Scheduled'),
(4, 4, '2025-09-12', 'Fever and cold', 'Completed'),
(5, 1, '2025-09-15', 'Chest pain', 'Scheduled');
