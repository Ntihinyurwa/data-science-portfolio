
-- Business Question:
-- Which doctors generate higher average invoice values per visit?
-- This helps identify revenue-driving providers and supports
-- workload and compensation analysis.
SELECT d.first_name, d.last_name
FROM Doctor d
JOIN Appointment ap ON d.doctor_id = ap.doctor_id
JOIN Visit v ON ap.appointment_id = v.appointment_id
JOIN Invoice i ON v.visit_id = i.visit_id
GROUP BY d.first_name, d.last_name
HAVING AVG(i.total_amount) >
       (SELECT AVG(total_amount) FROM Invoice);



-- Business Question:
-- How does each doctor's average invoice amount compare
-- to the overall clinic average invoice?
-- This supports performance benchmarking and compensation analysis.

SELECT
    d.first_name,
    d.last_name,
    AVG(i.total_amount) AS doctor_avg_invoice,
    AVG(AVG(i.total_amount)) OVER () AS clinic_avg_invoice
FROM Doctor d
JOIN Appointment ap
    ON d.doctor_id = ap.doctor_id
JOIN Visit v
    ON ap.appointment_id = v.appointment_id
JOIN Invoice i
    ON v.visit_id = i.visit_id
GROUP BY
    d.first_name,
    d.last_name;



-- Business Question:
-- Which customers both scheduled appointments and completed visits?
-- This helps identify reliable customers and analyze visit follow-through.

SELECT
    c.customer_id,
    c.first_name,
    c.last_name
FROM Customer c
JOIN Appointment ap
    ON c.customer_id = ap.customer_id

INTERSECT

SELECT
    c.customer_id,
    c.first_name,
    c.last_name
FROM Customer c
JOIN Visit v
    ON c.customer_id = v.customer_id;


-- Business Question:
-- Which doctors show consistent revenue performance across visits?
-- This helps differentiate steady revenue generators from one-time high invoices.

SELECT
    d.first_name,
    d.last_name,
    v.visit_id,
    i.total_amount,
    AVG(i.total_amount) OVER (
        PARTITION BY d.doctor_id
    ) AS doctor_avg_invoice,
    i.total_amount 
        - AVG(i.total_amount) OVER (PARTITION BY d.doctor_id) 
        AS deviation_from_doctor_avg
FROM Doctor d
JOIN Appointment ap
    ON d.doctor_id = ap.doctor_id
JOIN Visit v
    ON ap.appointment_id = v.appointment_id
JOIN Invoice i
    ON v.visit_id = i.visit_id
ORDER BY
    d.last_name,
    deviation_from_doctor_avg DESC;


