--Core Tables
-- Clinic
CREATE TABLE APC (
    apc_id INT PRIMARY KEY,
    clinic_name VARCHAR(100),
    address VARCHAR(255),
    phone VARCHAR(20)
);

-- Customers
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    apc_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone VARCHAR(20),
    email VARCHAR(100),
    FOREIGN KEY (apc_id) REFERENCES APC(apc_id)
);

-- Pets
CREATE TABLE Pet (
    pet_id INT PRIMARY KEY,
    customer_id INT,
    pet_name VARCHAR(50),
    species VARCHAR(30),
    breed VARCHAR(50),
    birth_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

-- Doctors
CREATE TABLE Doctor (
    doctor_id INT PRIMARY KEY,
    apc_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    specialization VARCHAR(100),
    FOREIGN KEY (apc_id) REFERENCES APC(apc_id)
);

--Clinical Flow Tables
-- Appointments
CREATE TABLE Appointment (
    appointment_id INT PRIMARY KEY,
    pet_id INT,
    doctor_id INT,
    appointment_date DATE,
    appointment_time TIME,
    FOREIGN KEY (pet_id) REFERENCES Pet(pet_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id)
);

-- Visits
CREATE TABLE Visit (
    visit_id INT PRIMARY KEY,
    appointment_id INT,
    visit_date DATE,
    notes TEXT,
    FOREIGN KEY (appointment_id) REFERENCES Appointment(appointment_id)
);

-- Diagnosis
CREATE TABLE Diagnosis (
    diagnosis_id INT PRIMARY KEY,
    visit_id INT,
    diagnosis_description TEXT,
    FOREIGN KEY (visit_id) REFERENCES Visit(visit_id)
);

--Financial & Inventory Tables
-- Suppliers
CREATE TABLE Supplier (
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(100),
    phone VARCHAR(20)
);

-- Medication
CREATE TABLE Medication (
    medication_id INT PRIMARY KEY,
    supplier_id INT,
    medication_name VARCHAR(100),
    cost DECIMAL(10,2),
    price DECIMAL(10,2),
    FOREIGN KEY (supplier_id) REFERENCES Supplier(supplier_id)
);

-- Prescriptions
CREATE TABLE Prescription (
    prescription_id INT PRIMARY KEY,
    visit_id INT,
    medication_id INT,
    quantity INT,
    FOREIGN KEY (visit_id) REFERENCES Visit(visit_id),
    FOREIGN KEY (medication_id) REFERENCES Medication(medication_id)
);

-- Invoice
CREATE TABLE Invoice (
    invoice_id INT PRIMARY KEY,
    visit_id INT,
    total_amount DECIMAL(10,2),
    invoice_date DATE,
    FOREIGN KEY (visit_id) REFERENCES Visit(visit_id)
);
