CREATE DATABASE Hospital;
USE Hospital;

-- Patients table
CREATE TABLE Patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    dob DATE NOT NULL,
    gender VARCHAR(10),
    phone VARCHAR(20) UNIQUE,
    address VARCHAR(200)
);

-- Doctors table
CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    specialty VARCHAR(100) NOT NULL,
    phone VARCHAR(20) UNIQUE,
    email VARCHAR(100) UNIQUE
);

-- Appointments table
CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    appointment_date DATE NOT NULL,
    reason VARCHAR(200),
    status VARCHAR(20) DEFAULT 'Scheduled',
    FOREIGN KEY(patient_id) REFERENCES Patients(patient_id) ON DELETE CASCADE,
    FOREIGN KEY(doctor_id) REFERENCES Doctors(doctor_id) ON DELETE CASCADE
);
