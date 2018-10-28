SELECT '1 : SELECT * FROM Livres';
SELECT * FROM Livres;

SELECT '2 : SELECT titre, prix FROM Livres'; 
SELECT titre, prix FROM Livres;

SELECT '3 : SELECT titre, auteur FROM Livres WHERE auteur="Herge"';
SELECT titre, auteur FROM Livres
	WHERE auteur="Herge";
  
SELECT '4 : SELECT titre, auteur FROM Livres WHERE prix > 10 ORDER BY titre';
SELECT titre, auteur FROM Livres
	WHERE prix > 10
        ORDER BY titre; 	  


