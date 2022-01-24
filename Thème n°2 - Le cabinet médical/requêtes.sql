/*
Requête 1 : Afficher tous les rendez-vous du cabinet médical 
(date, créneau horaire, nom et prénom du patient, nom, prénom et spécialité du médecin, trié par date)
*/
select 
app_date AS Date, 
app_time AS Heure, 
patient.firstname AS Nom_Patient, 
patient.lastname AS Prénom_Patient,
doctor.firstname AS Nom_docteur,
doctor.lastname AS Prénom_docteur,
doctor.speciality AS Spécialité
from appointment 
INNER JOIN doctor ON doctor.id = appointment.id_doctor
INNER JOIN patient ON patient.id = appointment.id_patient
ORDER BY app_date;
/*
Requête 2 : Afficher tous les rendez-vous d'un médecin 
(nom et prénom du médecin, date et créneau horaire du rendez-vous, nom et prénom du patient, trié par date)
*/
select 
app_date AS Date, 
app_time AS Heure, 
patient.firstname AS Nom_Patient, 
patient.lastname AS Prénom_Patient,
doctor.firstname AS Nom_docteur,
doctor.lastname AS Prénom_docteur
from appointment 
INNER JOIN doctor ON doctor.id = appointment.id_doctor
INNER JOIN patient ON patient.id = appointment.id_patient
WHERE doctor.id = 2 ORDER BY app_date;
/*
Requête 3 : Afficher tous les rendez-vous d'un jour 
(nom et prénom du médecin, nom et prénom du patient, date et créneau horaire du rendez-vous)
*/
select 
app_date AS Date, 
app_time AS Heure, 
patient.firstname AS Nom_Patient, 
patient.lastname AS Prénom_Patient,
doctor.firstname AS Nom_docteur,
doctor.lastname AS Prénom_docteur
from appointment 
INNER JOIN doctor ON doctor.id = appointment.id_doctor
INNER JOIN patient ON patient.id = appointment.id_patient
WHERE appointment.app_date = '2022-01-22';
/*
Requête 4 : Afficher tous les rendez-vous d'un service (Médecine générale, Oncologie, ...)
*/
select 
app_date AS Date, 
app_time AS Heure, 
patient.firstname AS Nom_Patient, 
patient.lastname AS Prénom_Patient,
doctor.firstname AS Nom_docteur,
doctor.lastname AS Prénom_docteur
from appointment 
INNER JOIN doctor ON doctor.id = appointment.id_doctor
INNER JOIN patient ON patient.id = appointment.id_patient
WHERE doctor.speciality = 'Généraliste';
/*
Requêt 5 : Afficher tous les médecins ayant la même spécialité
*/
select 
doctor.firstname AS Nom_docteur,
doctor.lastname AS Prénom_docteur
from doctor 
WHERE doctor.speciality = 'Généraliste';
/* 
Requêt 6 : Afficher tous les patients d'un médecin
*/
SELECT * FROM patient WHERE id_doctor = 1;