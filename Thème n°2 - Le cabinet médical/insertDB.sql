/*
Scripte d'insertion dans la base de données cabinet
21/02/2022
*/
USE cabinet;
-- Ajout de données à la table speciality
INSERT INTO speciality (spe_name) 
VALUES
 ('Généraliste'),
 ('Neurologue'),
 ('Oncologue'),
 ('Cardiologue');
 -- Ajout de données à la table doctor                                                                                                                                                                                     
INSERT INTO doctor
(lastname, firstname, mail, speciality) 
VALUES
 ('Pierre', 'Erreip', 'Pierre.Erreip@lamanu.fr', 'Généraliste'),
 ('Paul', 'Luap', 'Paul.Luap@lamanu.fr', 'Généraliste'),
 ('Romain', 'Niamor', 'Romain.Niamor@lamanu.fr', 'Neurologue'),
 ('Cécile', 'Elicéc', 'Cécile.Elicéc@lamanu.fr', 'Neurologue'),
 ('Thibaut', 'Tuabiht', 'Thibaut.Tuabiht@lamanu.fr', 'Oncologue'),
 ('Anais', 'Siana', 'Anais.Siana@lamanu.fr', 'Oncologue'),
 ('Guillaume', 'emuallig', 'Guillaume.emuallig@lamanu.fr', 'Cardiologue'),
 ('Pascale', 'Elacsap', 'Pascale.Elacsap@lamanu.fr', 'Cardiologue');
 -- Ajout de données à la table patient   
INSERT INTO patient
(lastname, firstname, date_naissance, id_doctor) 
VALUES
 ('Elisa', 'Ravault', '2011-10-16', 1),
 ('Lou', 'Ravault', '2011-05-28', 2),
 ('Nola', 'Daumard', '2011-12-31', 1),
 ('Eylenne', 'Daumard', '2011-10-16', 2),
 ('Line', 'Raguin', '2011-05-28', 1),
 ('Maude', 'Raguin', '2011-12-31', 2),
 ('Louis', 'Sergent', '2011-10-16', 2),
 ('Augustin', 'Sergent', '2011-05-28', 2),
 ('Constance', 'Sergent', '2011-12-31', 2),
 ('Fleur', 'Moreau', '2011-10-16', 2),
 ('Marceau', 'Ganon', '2010-05-28', 1),
 ('Swann', 'Anger', '2010-12-31', 1),
 ('Solan', 'Anger', '2010-12-31', 2),
 ('Maelyn', 'Labbey', '2010-12-31', 1),
 ('Leyna', 'Labbey', '2010-12-31', 1),
 ('Riri', 'Duck', '2010-12-31', 1),
 ('Fifi', 'Duck', '2010-12-31', 1),
 ('Loulou', 'Duck', '2010-12-31', 1),
 ('Donald', 'Duck', '2010-12-31', 1),
 ('Picson', 'Duck', '2010-12-31', 2);
-- Ajout de données à la table appointment   
INSERT INTO appointment
(app_date, app_time, id_doctor, id_patient) 
VALUES
 ('2022-01-21', '08:00', 1, 1),
 ('2022-01-21', '09:00', 2, 16),
 ('2022-01-21', '10:00', 2, 8),
 ('2022-01-21', '11:00', 7, 1),
 ('2022-01-21', '12:00', 1, 17),
 ('2022-01-21', '13:00', 4, 1),
 ('2022-01-21', '14:00', 2, 2),
 ('2022-01-22', '15:00', 4, 2),
 ('2022-01-22', '16:00', 2, 18),
 ('2022-01-22', '17:00', 1, 9),
 ('2022-01-22', '18:00', 2, 2),
 ('2022-01-22', '19:00', 5, 2),
 ('2022-01-22', '08:00', 1, 3),
 ('2022-01-22', '09:00', 2, 10),
 ('2022-01-22', '10:00', 5, 3),
 ('2022-01-22', '11:00', 1, 19),
 ('2022-01-22', '12:00', 3, 3),
 ('2022-01-23', '13:00', 6, 3),
 ('2022-01-23', '14:00', 1, 11),
 ('2022-01-23', '15:00', 2, 4),
 ('2022-01-23', '16:00', 2, 20),
 ('2022-01-23', '17:00', 8, 4),
 ('2022-01-23', '18:00', 2, 12),
 ('2022-01-23', '19:00', 6, 4),
 ('2022-01-23', '08:00', 1, 5),
 ('2022-01-23', '09:00', 3, 5),
 ('2022-01-23', '10:00', 5, 5),
 ('2022-01-24', '11:00', 1,13),
 ('2022-01-24', '12:00', 8, 5),
 ('2022-01-24', '13:00', 1, 5),
 ('2022-01-24', '14:00', 2, 6),
 ('2022-01-24', '15:00', 4, 6),
 ('2022-01-24', '16:00', 2, 14),
 ('2022-01-24', '17:00', 8, 6),
 ('2022-01-24', '18:00', 3, 6),
 ('2022-01-24', '19:00', 7, 6),
 ('2022-01-24', '08:00', 1, 7),
 ('2022-01-24', '09:00', 1, 15),
 ('2022-01-25', '10:00', 5, 7),
 ('2022-01-25', '11:00', 7, 7);