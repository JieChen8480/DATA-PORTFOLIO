-- Create the database
CREATE DATABASE logistics_performance;

-- Use the database
USE logistics_performance;

-- Create a table for shipments
CREATE TABLE shipments (
    shipment_id INT PRIMARY KEY,
    vendor_id INT,
    shipment_date DATE,
    delivery_date DATE,
    cost DECIMAL(10, 2),
    region VARCHAR(50),
    status VARCHAR(50)
);

-- Create a table for vendors
CREATE TABLE vendors (
    vendor_id INT PRIMARY KEY,
    vendor_name VARCHAR(100),
    performance_score DECIMAL(4, 2),
    region VARCHAR(50)
);

-- Create a table for performance metrics
CREATE TABLE performance_metrics (
    metric_id INT PRIMARY KEY,
    shipment_id INT,
    on_time_delivery BOOLEAN,
    delivery_time INT, -- in hours
    cost_efficiency DECIMAL(4, 2),
    FOREIGN KEY (shipment_id) REFERENCES shipments(shipment_id)
);