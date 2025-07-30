CREATE TABLE Diagnoses (
  diagnosis_id SERIAL PRIMARY KEY,
  appointment_id INT REFERENCES Appointments(appointment_id),
  condition TEXT NOT NULL,
  notes TEXT
);
