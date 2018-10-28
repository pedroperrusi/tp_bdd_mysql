-- Q1: Ou habitent Aline, Bernard, Caroline et Denis ?

SELECT 
    nom, addresse 
    FROM 
        Client Cl LEFT JOIN Contrat Co 
            ON Cl.idCl = Co.idCl
    WHERE 
        Cl.nom 
            in ('Aline', 'Bernard', 'Caroline', 'Denis')
    ORDER BY nom;

-- Q2: Quel est le cout total et moyen des interventions ?

SELECT SUM(cout), AVG(cout) FROM Intervention;

-- Q3: Qui a eu des sinistres > 1500 euros ?

SELECT
    nom, cout
    FROM
        Client NATURAL JOIN Contrat NATURAL JOIN Sinistre NATURAL JOIN Intervention
    WHERE
        cout > 1500;

-- Q4: Qui a eu un sinistre entre 2009 et 2011 ?

SELECT
    nom, dateSi
    FROM
        Client NATURAL JOIN Contrat NATURAL JOIN Sinistre
    WHERE
        YEAR(dateSi) >= 2009 AND  YEAR(dateSi) <= 2011;


-- Q5: Comment faire en sort qu'il nest pas possible suprimmer un client ou de mmodifier son id si il a encore des contrats ?

-- R: L'option default du MySQL sauvegarde votre table de ce type de operation.
-- une meilleure definition serait creer votre table Contrat avec la proprieté:
-- ON DELETE {RESTRICT | NO ACTION | SET NULL};
-- ON UPDATE {RESTRICT | NO ACTION | SET NULL}

-- Q6: Comment faire pour la supression d'un Client entraine la supression de tous ses contrats ou sa motification réepercute en tous ces contrats ?

-- R: On doit ajouter a la creation de table client les parametres:
-- ON DELETE {CASCADE};
-- ON UPDATE {CASCADE}

-- https://openclassrooms.com/fr/courses/1959476-administrez-vos-bases-de-donnees-avec-mysql/1965264-options-des-cles-etrangeres



