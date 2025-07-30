-- 1. Insert Sample Patients

INSERT INTO Patients (name, gender, dob, phone, email) VALUES
('Aditi Sharma', 'Female', '1995-06-15', '9876543210', 'aditi@gmail.com'),
('Raj Verma', 'Male', '1987-02-03', '9123456789', 'rajv@gmail.com');



-- 2. Insert Sample Doctors

INSERT INTO Doctors (name, specialization, phone, email) VALUES
('Dr. Meena Patel', 'Cardiologist', '9988776655', 'meena.patel@hospital.com'),
('Dr. Arjun Desai', 'Dermatologist', '8877665544', 'arjun.desai@hospital.com');



--  3. Insert Sample Appointments

INSERT INTO Appointments (patient_id, doctor_id, appointment_date, status) VALUES
(1, 1, '2024-07-01 10:00:00', 'Completed'),
(2, 2, '2024-07-02 14:30:00', 'Completed'),
(1, 2, '2024-07-15 11:00:00', 'Scheduled');



-- 🔹 4. Insert Sample Diagnoses

INSERT INTO Diagnoses (appointment_id, condition, notes) VALUES
(1, 'Hypertension', 'Patient advised to reduce salt intake'),
(2, 'Skin Rash', 'Topical cream prescribed');



-- 🔹 5. Insert Sample Prescriptions

INSERT INTO Prescriptions (appointment_id, medicine_name, dosage, frequency, duration) VALUES
(1, 'Amlodipine', '5mg', 'Once Daily', '30 days'),
(2, 'Hydrocortisone Cream', 'Apply thin layer', 'Twice Daily', '7 days');



-- 🔹 6. Insert Sample Lab Reports

INSERT INTO LabReports (appointment_id, report_type, result) VALUES
(1, 'Blood Pressure Test', '140/90 mmHg'),
(2, 'Allergy Panel', 'Mild allergy to pollen');