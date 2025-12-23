-- Revenue by Clinic
SELECT a.clinic_name,
       SUM(i.total_amount) AS total_revenue
FROM Invoice i
JOIN Visit v ON i.visit_id = v.visit_id
JOIN Appointment ap ON v.appointment_id = ap.appointment_id
JOIN Doctor d ON ap.doctor_id = d.doctor_id
JOIN APC a ON d.apc_id = a.apc_id
GROUP BY a.clinic_name;

--Top 5 Customers by Spend
SELECT c.customer_id,
       c.first_name,
       c.last_name,
       SUM(i.total_amount) AS total_spent
FROM Customer c
JOIN Pet p ON c.customer_id = p.customer_id
JOIN Appointment ap ON p.pet_id = ap.pet_id
JOIN Visit v ON ap.appointment_id = v.appointment_id
JOIN Invoice i ON v.visit_id = i.visit_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_spent DESC
LIMIT 5;

--Most Prescribed Medications
SELECT m.medication_name,
       COUNT(*) AS times_prescribed
FROM Prescription p
JOIN Medication m ON p.medication_id = m.medication_id
GROUP BY m.medication_name
ORDER BY times_prescribed DESC;

--Doctor Workload Analysis
SELECT d.first_name,
       d.last_name,
       COUNT(v.visit_id) AS total_visits
FROM Doctor d
JOIN Appointment ap ON d.doctor_id = ap.doctor_id
JOIN Visit v ON ap.appointment_id = v.appointment_id
GROUP BY d.first_name, d.last_name
ORDER BY total_visits DESC;

