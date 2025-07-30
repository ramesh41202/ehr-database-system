-- Create roles
CREATE ROLE admin LOGIN PASSWORD 'admin123';
CREATE ROLE doctor LOGIN PASSWORD 'doc123';
CREATE ROLE nurse LOGIN PASSWORD 'nurse123';

-- Grant privileges

-- Admin has full access
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO admin;

-- Doctor: read/write patients, appointments, prescriptions
GRANT SELECT, INSERT, UPDATE ON Patients TO doctor;
GRANT SELECT, INSERT, UPDATE ON Appointments TO doctor;
GRANT SELECT, INSERT, UPDATE ON Prescriptions TO doctor;
GRANT SELECT ON LabReports TO doctor;

-- Nurse: read-only access to patients and appointments
GRANT SELECT ON Patients TO nurse;
GRANT SELECT ON Appointments TO nurse;

-- Allow execution of functions/triggers if needed
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public TO doctor, nurse, admin;
