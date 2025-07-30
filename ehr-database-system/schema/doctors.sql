CREATE TABLE Doctors (
  doctor_id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  specialization VARCHAR(100),
  phone VARCHAR(15),
  email VARCHAR(100)
);
