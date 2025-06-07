# FreeCodeCamp Database Challenge: Salon Appointment System

## Description

This repository contains the code and data structure for a project based on the FreeCodeCamp database challenge. The project involves creating and managing a database system for handling information about customers, appointments, and services in a salon. The goal is to simulate a simple yet efficient relational database system where salon services and customer data can be stored, queried, and managed.

## Database Design

The database consists of several tables to store and manage different types of data relevant to a salon. The key tables include:

1. **Customers**: Contains information about the customers, such as their phone number and name.
   - **customer_id**: Primary Key, automatically increments.
   - **phone**: Unique, stores the phone number of the customer.
   - **name**: Name of the customer.

2. **Appointments**: Contains details about the appointments scheduled in the salon.
   - **appointment_id**: Primary Key, automatically increments.
   - **customer_id**: Foreign Key, references the `customer_id` column from the `customers` table.
   - **service_id**: Foreign Key, references the `service_id` column from the `services` table.
   - **time**: The time of the appointment.

3. **Services**: Contains information about the different services offered by the salon.
   - **service_id**: Primary Key, automatically increments.
   - **name**: The name of the service (e.g., haircut, manicure, pedicure).

Each table is linked through **Foreign Keys** to establish relationships between customers, services, and appointments.

## Purpose

The project serves as a challenge to implement a simple database structure using SQL and Bash scripting. The purpose is to practice and demonstrate skills related to:

- **Database design and normalization**: Creating structured tables and relationships.
- **SQL queries**: Inserting, updating, and querying data.
- **Bash scripting**: Automating data input and managing user interactions through a script.

## Technologies Used

- **PostgreSQL**: The relational database management system (RDBMS) used for creating and managing the database.
- **SQL**: Structured Query Language for creating tables, inserting data, and querying the database.
- **Bash**: A shell script used to interact with the database and prompt users for input.
