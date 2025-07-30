CREATE TABLE LabReports (
  report_id SERIAL PRIMARY KEY,
  appointment_id INT REFERENCES Appointments(appointment_id),
  report_type VARCHAR(100),
  result TEXT,
  report_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
