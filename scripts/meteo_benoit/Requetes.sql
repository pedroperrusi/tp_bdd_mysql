-- SELECT '1 : températures de la station 7005';
-- SELECT idOMM, temperature FROM Mesure INNER JOIN Station ON codStation=idOMM WHERE idOMM=7005;

-- SELECT '2 : Tmin, Tmax de station 7577 pour hier'; 
-- SELECT nom, dateS, sum(cout) FROM Client Cl INNER JOIN Contrat C ON Cl.id=idCl 
-- INNER JOIN Sinistre S ON C.id=idCo 
-- INNER JOIN Intervention ON S.id=idSi
-- GROUP BY idSi
-- HAVING nom LIKE "Antonio Gaudi";

-- SELECT '3 : description du temps pour station 7643 le 20/10/2018 à 18h';
-- SELECT count(id) FROM Contrat;
  
-- SELECT '4 : nombre de station dans la base';
-- SELECT nom, count(idCl) FROM Client Cl INNER JOIN Contrat C ON Cl.id=idCl 
-- GROUP BY idCl;

-- SELECT '5 : temp et pression de la semaine pour station de strg_entzheim';
-- SELECT nom FROM Client Cl INNER JOIN Contrat C ON Cl.id=idCl 
-- INNER JOIN Sinistre S ON C.id=idCo 
-- INNER JOIN 
-- (SELECT * FROM Intervention GROUP BY idSi HAVING count(idSi)>=2) T
-- ON S.id=idSi;

-- SELECT '6 : temp moy de la semaine par n° de station'; 
-- SELECT nom, societe FROM Client Cl INNER JOIN Contrat C ON Cl.id=idCl 
-- INNER JOIN Sinistre S ON C.id=idCo 
-- INNER JOIN Intervention ON S.id=idSi
-- WHERE societe != "Held & Franck";

-- SELECT '7 : temp moy et pression moy de la semaine par n° de station';
-- SELECT nom, societe, a FROM
-- (SELECT nom, societe, count(idSi) as a FROM Client Cl INNER JOIN Contrat C ON Cl.id=idCl 
-- INNER JOIN Sinistre S ON C.id=idCo 
-- INNER JOIN Intervention ON S.id=idSi
-- GROUP BY societe,nom) T
-- GROUP BY nom
-- HAVING count(nom)<2;
  

-- SELECT '8 : date/heure nom station, direction du vent pour tout';
-- SELECT dateS, societe, cout FROM Sinistre S
-- INNER JOIN Intervention ON S.id=idSi WHERE 
-- (SELECT dateS FROM Sinistre S
-- INNER JOIN Intervention ON S.id=idSi
-- GROUP BY idSi
-- HAVING  count(idSi)>1) T IN dateS;

-- SELECT '9 : date, nom station pour au moins une mesure à valeur manquante';
-- SELECT dateS, societe FROM Sinistre S
-- INNER JOIN Intervention ON S.id=idSi
-- GROUP BY idSi
-- HAVING count(idSi)>1;

  
