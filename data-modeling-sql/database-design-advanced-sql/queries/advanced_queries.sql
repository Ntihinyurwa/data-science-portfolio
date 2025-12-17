-- Doctors whose average invoice exceeds clinic average
SELECT d.first_name, d.last_name
FROM Doctor d
JOIN Appointment ap ON d.doctor_id = ap.doctor_id
JOIN Visit v ON ap.appointment_id = v.appointment_id
JOIN Invoice i ON v.visit_id = i.visit_id
GROUP BY d.first_name, d.last_name
HAVING AVG(i.total_amount) >
       (SELECT AVG(total_amount) FROM Invoice);

