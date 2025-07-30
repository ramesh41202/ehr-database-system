CREATE TABLE Patients (
  patient_id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  gender VARCHAR(10),
  dob DATE,
  phone VARCHAR(15),
  email VARCHAR(100)
);
