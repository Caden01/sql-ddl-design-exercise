DROP DATABASE IF EXISTS medical_center;

CREATE DATABASE medical_center;

\c medical_center

CREATE TABLE doctors
(
    id SERIAL PRIMARY KEY,
    name text
);  

CREATE TABLE patients
(
    id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE diseases
(
    id SERIAL PRIMARY KEY,
    name TEXT,
    description VARCHAR
);

CREATE TABLE visits
(
    id SERIAL PRIMARY KEY,
    doctor_id SERIAL REFERENCES doctors,
    patient_id SERIAL REFERENCES patients,
    disease_id SERIAL REFERENCES diseases
);

INSERT INTO doctors
    (name)
VALUES
    ('Bob');

INSERT INTO patients
    (name)
VALUES
    ('Tom');

INSERT INTO diseases
    (name, description)
VALUES
    ('Common Cold', 'Stuffy nose, cough, fever.');