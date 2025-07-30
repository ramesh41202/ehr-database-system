# 🏥 Electronic Health Record (EHR) Database System

A normalized, secure PostgreSQL database project to manage patient medical records including appointments, diagnoses, prescriptions, and lab reports. The system features role-based access control and audit logging to simulate HIPAA-style data privacy and tracking.

---

## 📌 Tech Stack

- **Database**: PostgreSQL
- **Tool**: pgAdmin
- **Languages**: SQL (PostgreSQL dialect)
- **Concepts**: Normalization, Foreign Keys, Role-Based Access Control, Triggers, Audit Logging

---

## 🔧 Features

- ✅ Structured schema for managing patients, doctors, appointments, prescriptions, diagnoses, and lab reports
- ✅ Audit logging on the `Patients` table using triggers
- ✅ Role-based permissions: `admin`, `doctor`, and `nurse`
- ✅ Sample data and query reports (e.g., visit counts, appointment summaries)
- ✅ Fully normalized schema with referential integrity

---

## 📁 Project Structure

ehr-database-system/
├── README.md
├── schema/
│ ├── patients.sql
│ ├── doctors.sql
│ ├── appointments.sql
│ ├── diagnoses.sql
│ ├── prescriptions.sql
│ ├── lab_reports.sql
├── security/
│ ├── roles_and_permissions.sql
│ └── audit_trigger.sql
├── queries/
│ ├── appointment_summary.sql
│ ├── patient_visit_count.sql
│ └── doctor_activity_report.sql
├── test_cases/
│ └── sample_data.sql


---

##  How to Run

1. Open **pgAdmin** or any PostgreSQL client
2. Run the files in the following order:

   - 📁 `schema/`: Create all tables
   - 📁 `security/`: Set up roles and audit triggers
   - 📁 `test_cases/sample_data.sql`: Insert sample data

3. Run queries in `queries/` to test analytics

---

##  Sample Queries

###  Appointment Summary
```sql
SELECT 
  a.appointment_id,
  p.name AS patient_name,
  d.name AS doctor_name,
  a.appointment_date,
  a.status
FROM Appointments a
JOIN Patients p ON a.patient_id = p.patient_id
JOIN Doctors d ON a.doctor_id = d.doctor_id
ORDER BY a.appointment_date DESC;


### Patient Visit Count

SELECT 
  p.name AS patient_name,
  COUNT(a.appointment_id) AS total_visits
FROM Patients p
LEFT JOIN Appointments a ON p.patient_id = a.patient_id
GROUP BY p.name
ORDER BY total_visits DESC;


