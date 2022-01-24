/*
Scripte de création de la base de données cabinet médical
21/02/2022
*/
--Supprime la base de données si elle existe déjà.
DROP DATABASE IF EXISTS cabinet;
--Création de la base de donnée
CREATE DATABASE cabinet;
USE cabinet;
--Création de la table classe
DROP TABLE IF EXISTS speciality;
CREATE TABLE speciality (
    spe_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (spe_name)
);
--Création de la table doctor
DROP TABLE IF EXISTS doctor;
CREATE TABLE doctor (
    id INT NOT NULL IDENTITY(1,1),
    lastname VARCHAR(50) NOT NULL,
    firstname VARCHAR(50) NOT NULL,
    mail VARCHAR(50) NOT NULL,
    speciality VARCHAR(50) NOT NULL
    PRIMARY KEY (id),
        CONSTRAINT doctor_to_speciality
        FOREIGN KEY (speciality)
        REFERENCES speciality(spe_name)
);
--Création de la table patien
DROP TABLE IF EXISTS patient;
CREATE TABLE patient (
    id INT NOT NULL IDENTITY(1,1),
    lastname VARCHAR(50) NOT NULL,
    firstname VARCHAR(50) NOT NULL,
    date_naissance DATE NOT NULL,
    id_doctor INT NOT NULL
    PRIMARY KEY (id),
        CONSTRAINT patient_to_doctor
        FOREIGN KEY (id_doctor)
        REFERENCES doctor(id)
);
--Création de la table appointment
DROP TABLE IF EXISTS appointment;
CREATE TABLE appointment (
    id INT NOT NULL IDENTITY(1,1),
    app_date DATE NOT NULL,
    app_time TIME NOT NULL ,
    id_doctor INT NOT NULL,
    id_patient INT NOT NULL,
    PRIMARY KEY (id),
        CONSTRAINT appointment_to_doctor_topatient
        FOREIGN KEY (id_doctor)
        REFERENCES doctor(id),
        FOREIGN KEY (id_patient)
        REFERENCES patient(id)
);