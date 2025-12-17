# Database Design & Advanced SQL Analytics

## Overview
This project focuses on relational database design, dimensional modeling, and advanced SQL analytics used to support business reporting and decision-making.

The work demonstrates strong foundations in data modeling, normalization, SQL querying, and analytics-ready data preparation.

## Business Problem
Organizations rely on well-designed databases to:
- Ensure data consistency and integrity  
- Support efficient analytical queries  
- Enable accurate reporting across business functions  

# The project below is  an implementation of database design:

## Database Design & ERD — Austin Pet Clinic (APC)

### Overview

This project focuses on **end-to-end relational database design** for a real-world business scenario.
Based on a detailed operational use case for **Austin Pet Clinic (APC)**, I designed a **fully normalized Entity-Relationship Diagram (ERD)** to support clinical operations, billing, inventory management, and reporting.

The goal was to translate business requirements into a **scalable, consistent, and analytics-ready database schema**.

### Business Context

Austin Pet Clinic requires a database system to manage:

* Customers and their pets
* Appointments and clinic visits
* Doctors and diagnoses
* Prescriptions and medications
* Suppliers and inventory
* Invoices and charges

The system must support **operational workflows** (appointments, visits, prescriptions) while also enabling **financial reporting and analytics**.

### Solution Design

I designed a **comprehensive ERD** that models the clinic’s ecosystem using well-defined entities, primary keys, foreign keys, and relationships.

Key design principles applied:

* **Third Normal Form (3NF)** to eliminate redundancy
* Clear **entity ownership and responsibility**
* Proper handling of **one-to-many** and **many-to-many** relationships
* Separation of **clinical**, **administrative**, and **financial** data
* Strong **referential integrity** for reliable querying and reporting

### Core Entities

The final design includes (but is not limited to):

* **APC** — Clinic metadata and operating details
* **Customer** — Pet owners linked to the clinic
* **Pet** — Individual pets owned by customers
* **Doctor** — Veterinary staff associated with the clinic
* **Appointment** — Scheduled services
* **Visit** — Actual clinic encounters (distinct from appointments)
* **Diagnosis** — Medical assessments per visit
* **Prescription** — Medications prescribed to pets
* **Medication** — Inventory items with cost and pricing
* **Supplier** — Medication vendors
* **Invoice** — Aggregated financial charges

Each entity is defined with:

* A clear **primary key**
* Meaningful **attributes**
* Appropriate **foreign key relationships**

### ERD Highlights

* Distinction between **Appointment** and **Visit** enables accurate operational tracking
* **Invoice** entity aggregates charges across visits, prescriptions, and services
* **Medication–Supplier** relationship supports inventory and cost analysis
* Design supports **future analytics** such as:

  * Revenue by service type
  * Medication usage trends
  * Doctor workload analysis
  * Customer lifetime value

 *The ERD diagram included in this repository was reviewed and approved by the course instructor.*

### Skills Demonstrated

* Relational database design
* ERD modeling (Crow’s Foot notation)
* Primary/foreign key strategy
* Business rules translation into schema
* Data normalization (1NF → 3NF)
* Analytical database thinking

### Tools & Methods

* Conceptual → Logical data modeling
* ERD design methodology
* SQL-ready schema planning
* Academic and industry best practices

### Files Included

* **ERD diagram (PDF)** — Visual representation of the full schema
* **Problem description (PDF)** — Original business requirements and use case

### Why This Project Matters

This project demonstrates my ability to:

* Understand complex business workflows
* Design databases that scale beyond classroom examples
* Build schemas that support **both operations and analytics**
* Communicate technical design decisions clearly

It reflects the same type of database design thinking used in **production systems**, **data warehouses**, and **enterprise applications**.

