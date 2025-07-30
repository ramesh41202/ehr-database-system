CREATE TABLE AuditLog (
  audit_id SERIAL PRIMARY KEY,
  table_name VARCHAR(50),
  operation_type VARCHAR(10),
  record_id INT,
  changed_by TEXT DEFAULT SESSION_USER,
  change_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE OR REPLACE FUNCTION log_patient_changes()
RETURNS TRIGGER AS $$
BEGIN
  INSERT INTO AuditLog (table_name, operation_type, record_id)
  VALUES ('Patients', TG_OP, NEW.patient_id);
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER patient_audit_trigger
AFTER INSERT OR UPDATE OR DELETE ON Patients
FOR EACH ROW EXECUTE FUNCTION log_patient_changes();
