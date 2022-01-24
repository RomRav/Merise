--Requêtes 1 : Afficher toutes les notes d'un élève et les matières pour chacune des notes
use laManu;
SELECT nom_matiere AS Matière, eleve.nom AS Nom, note FROM note 
INNER JOIN matiere ON note.nom_matiere = matiere.nom
INNER JOIN eleve ON note.id_eleve = eleve.id
WHERE id_eleve = 1;
--Requêtes 2 : Afficher la moyenne de l'élève par matière
use laManu;
SELECT 
nom_matiere AS Matière, 
eleve.nom AS Nom, 
CAST(AVG(note) as decimal(4,2)) AS Moyenne 
FROM note 
INNER JOIN matiere ON note.nom_matiere = matiere.nom 
INNER JOIN eleve ON note.id_eleve = eleve.id
WHERE id_eleve = 1 GROUP BY nom_matiere, eleve.nom, eleve.id;
--Requêtes 3 : Afficher la moyenne générale de l'élève
use laManu;
SELECT eleve.nom AS Nom, CAST(AVG(note) AS decimal(4,2)) AS Moyenne_générale FROM note 
INNER JOIN eleve ON note.id_eleve = eleve.id
WHERE id_eleve = 3 GROUP BY eleve.nom, eleve.id;
--Requêtes 4 : Afficher la moyenne générale de la classe pour une matière
use laManu;
SELECT classe.niveau AS Niveau, classe.nom AS Nom, AVG(note) AS Moyenne_classes FROM note 
INNER JOIN eleve ON note.id_eleve = eleve.id
INNER JOIN classe ON classe.id = eleve.id_classe
WHERE nom_matiere = 'Sport' GROUP BY classe.nom, classe.niveau;
--Requêtes 5 : Afficher la moyenne générale d'une classe (toute matière confondues)
use laManu;
SELECT classe.niveau AS Niveau, classe.nom AS Nom, AVG(note) AS Moyenne_classes FROM note 
INNER JOIN eleve ON note.id_eleve = eleve.id
INNER JOIN classe ON classe.id = eleve.id_classe
WHERE classe.id = 1 GROUP BY classe.nom, classe.niveau, classe.id;
--Requêtes 6 : Afficher tous les élèves d'un professeur
USE laManu;
SELECT 
eleve.nom AS Nom_élève, 
eleve.prenom AS Prénom_élève, 
professeur.nom AS Nom_prof, 
professeur.prenom AS Prénom_prof 
FROM note
INNER JOIN eleve ON note.id_eleve = eleve.id
INNER JOIN professeur ON note.id_professeur = professeur.id
WHERE professeur.id = 1;