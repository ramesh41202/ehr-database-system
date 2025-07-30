SELECT 
    p.name AS patient_name,
    COUNT(a.appointment_id) AS total_visits
FROM Patients p
LEFT JOIN Appointments a ON p.patient_id = a.patient_id
GROUP BY p.name
ORDER BY total_visits DESC;
