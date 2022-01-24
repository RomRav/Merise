/*
Scripte de création de la base de données La Manu
21/02/2022
SET foreign_key_checks = 0;
*/
DROP DATABASE IF EXISTS laManu;
GO
--Création de la base de donnée
CREATE DATABASE laManu;
GO
USE laManu;
--Création de la table classe
DROP TABLE IF EXISTS classe;
CREATE TABLE classe (
    id INT NOT NULL IDENTITY(1,1),
    nom VARCHAR(50) NOT NULL,
    niveau VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);
--Création de la table matiere
DROP TABLE IF EXISTS matiere;
CREATE TABLE matiere (
    nom VARCHAR(50) NOT NULL,
    PRIMARY KEY (nom)
);
--Création de la table Professeur
DROP TABLE IF EXISTS professeur;
CREATE TABLE professeur (
    id INT NOT NULL IDENTITY(1,1),
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    mail VARCHAR(50) NOT NULL,
    nom_matiere VARCHAR(50) NOT NULL
    PRIMARY KEY (id),
        CONSTRAINT professeur_to_matiere
        FOREIGN KEY (nom_matiere)
        REFERENCES matiere(nom)
);
--Création de la table eleve
DROP TABLE IF EXISTS eleve;
CREATE TABLE eleve (
    id INT NOT NULL IDENTITY(1,1),
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    date_naissance DATE NOT NULL,
    id_classe INT NOT NULL
    PRIMARY KEY (id),
        CONSTRAINT professeur_to_classe
        FOREIGN KEY (id_classe)
        REFERENCES classe(id)
);
--Création de la table note
DROP TABLE IF EXISTS note;
CREATE TABLE note (
    id_note INT NOT NULL IDENTITY(1,1),
    note INT NOT NULL ,
    appreciation VARCHAR(50) NOT NULL,
    id_professeur INT NOT NULL,
    id_eleve INT NOT NULL,
    nom_matiere VARCHAR(50) NOT NULL
    PRIMARY KEY (id_note),
        CONSTRAINT note_to_matiere_to_eleve_to_professeur
        FOREIGN KEY (nom_matiere)
        REFERENCES matiere(nom),
        FOREIGN KEY (id_professeur)
        REFERENCES professeur(id),
        FOREIGN KEY (id_eleve)
        REFERENCES eleve(id)
);
--Création de la table enseigne
DROP TABLE IF EXISTS enseigne;
CREATE TABLE enseigne (
    id_professeur INT NOT NULL,
    nom_matiere VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_professeur, nom_matiere),
        CONSTRAINT enseigne_to_matiere_to_professeur
        FOREIGN KEY (id_professeur)
        REFERENCES professeur(id),
        FOREIGN KEY (nom_matiere)
        REFERENCES matiere(nom)
);