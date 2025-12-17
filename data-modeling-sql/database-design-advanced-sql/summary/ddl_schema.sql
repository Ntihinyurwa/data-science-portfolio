-- Business Question:
-- Which doctors generate higher average invoice values per visit?
-- This helps identify revenue-driving providers and supports
-- workload and compensation analysis.

SELECT
    d.doctor_id,
    d.doctor_name,
    AVG(i.total_amount) AS avg_invoice_amount
FROM doctor d
JOIN visit v
    ON d.doctor_id = v.doctor_id
JOIN invoice i
    ON v.visit_id = i.visit_id
GROUP BY
    d.doctor_id,
    d.doctor_name
ORDER BY
    avg_invoice_amount DESC;

