CREATE TABLE Appointments (
  appointment_id SERIAL PRIMARY KEY,
  patient_id INT REFERENCES Patients(patient_id),
  doctor_id INT REFERENCES Doctors(doctor_id),
  appointment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  status VARCHAR(20) DEFAULT 'Scheduled'
);
