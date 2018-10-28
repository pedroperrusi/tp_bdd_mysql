-- Requetes suivantes

-- Q1: Chercher la liste de immobiliers du client <<Antonio Gaudi>>
SELECT
    nom, addresse
    FROM 
        Client Cl LEFT JOIN Contrat Co 
            ON Cl.idCl = Co.idCl
    WHERE 
        Cl.nom 
            in ('Antonio Gaudi');

-- Q2: Chercher des sinistres du client Antonio Gaudi et donner les couts
SELECT
    nom, dateSi, cout
    FROM 
        Client NATURAL JOIN Contrat NATURAL JOIN Sinistre NATURAL JOIN Intervention
    WHERE 
        nom 
            in ('Antonio Gaudi');

-- Q3: Quel est le nombre de contrats
SELECT
    COUNT(idCo) as Total_Contrat
    FROM Contrat;
    -- Da pra deixar mais bonito depois

-- Q4: Pour chaque client donner le nombre de contrats
SELECT
    COUNT(nom) as N_Contrat, nom
    FROM 
        Client Cl INNER JOIN Contrat Co 
            ON Cl.idCl = Co.idCl
    GROUP BY nom;

-- Q5: Donner le nom des clients qui ayent au moins deux interventions
SELECT
    COUNT(nom) as N_Sinistre, nom
    FROM
        Client NATURAL JOIN Contrat NATURAL JOIN Sinistre S INNER JOIN Intervention I
            ON S.idSi = I.idSi 
    GROUP BY nom
    HAVING N_Sinistre >= 2;

-- Q6: Donner les noms des clients qui n'ont ete jamais depannes par <<Held & Frank>>
SELECT
    nom as not_Clients_of_Held_n_Frank
    FROM 
        Client
    WHERE nom <>
        (SELECT
        nom
            FROM 
                Client NATURAL JOIN Contrat NATURAL JOIN Sinistre NATURAL JOIN Intervention
            WHERE
                societe = 'Held & Frank'
            GROUP BY 
                nom);

-- Q7: Donner les nols de s clients qui ont toujours fait appel a la meme societe d'intervention, le nombre de fois ansi comme le nombre total de sinistres
SELECT
    nom, societe, COUNT(nom) as Recurring_Appel
    FROM 
        Client NATURAL JOIN Contrat NATURAL JOIN Sinistre NATURAL JOIN Intervention
    GROUP BY nom, societe
    HAVING Recurring_Appel >= 2;

-- Q8: Chercher les sinistres qui ont necessite d'interventions des plusieurs enterprises
SELECT
    nom, dateSi, COUNT(dateSi) as Plusieurs_Societes
    FROM 
        Client NATURAL JOIN Contrat NATURAL JOIN Sinistre NATURAL JOIN Intervention
    GROUP BY dateSi
    HAVING Plusieurs_Societes >= 2;

-- Q9: Donner la liste des societés d'intervention. Pour chaqune des societes, donner le nombre de clients sinistres qu'elle a secorou, le nombre de sinistres sur lequel elle a travaille et la somme d'argent recue
SELECT
    societe, COUNT(nom) as nu
    FROM Client NATURAL JOIN Contrat NATURAL JOIN Sinistre NATURAL JOIN Intervention
    GROUP BY societe;

    
