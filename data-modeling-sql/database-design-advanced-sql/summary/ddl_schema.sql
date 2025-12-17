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


## Key Insights from SQL Analysis

The analytical SQL queries derived from this schema demonstrate how the database supports
real-world business and operational decision-making.

Key insights enabled by the queries include:

- **Doctor Performance Analysis**
  - Identification of doctors with higher average invoice values per visit
  - Supports workload balancing and revenue contribution analysis

- **Revenue and Billing Insights**
  - Aggregation of invoice totals across visits and services
  - Enables financial reporting at the clinic and provider level

- **Operational Efficiency**
  - Distinction between scheduled appointments and completed visits
  - Highlights no-shows, cancellations, and visit utilization rates

- **Medication & Inventory Analytics**
  - Tracking prescription frequency by medication
  - Supports supplier evaluation and inventory planning

These queries demonstrate how a well-designed relational schema enables
both **transactional integrity** and **analytical reporting** without redesign.
