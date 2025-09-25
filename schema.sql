PRAGMA foreign_keys = ON;

-- Patients
CREATE TABLE Patients (
    patient_id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    dob TEXT NOT NULL,         
    gender TEXT,
    phone TEXT UNIQUE,
    address TEXT
);

-- Doctors
CREATE TABLE Doctors (
    doctor_id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    specialty TEXT NOT NULL,
    phone TEXT UNIQUE,
    email TEXT UNIQUE
);

-- Appointments
CREATE TABLE Appointments (
    appointment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    patient_id INTEGER NOT NULL,
    doctor_id INTEGER NOT NULL,
    appointment_date TEXT NOT NULL, 
    reason TEXT,
    status TEXT DEFAULT 'Scheduled',
    FOREIGN KEY(patient_id) REFERENCES Patients(patient_id) ON DELETE CASCADE,
    FOREIGN KEY(doctor_id) REFERENCES Doctors(doctor_id) ON DELETE CASCADE
);
