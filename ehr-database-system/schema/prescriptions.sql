CREATE TABLE Prescriptions (
  prescription_id SERIAL PRIMARY KEY,
  appointment_id INT REFERENCES Appointments(appointment_id),
  medicine_name VARCHAR(100),
  dosage VARCHAR(50),
  frequency VARCHAR(50),
  duration VARCHAR(50)
);
