-- Assurance donnéés

-- Client(id,nom);
INSERT INTO Client 
  VALUES (1, "Aline");

INSERT INTO Client
  VALUES (2, "Bernard");

INSERT INTO Client
  VALUES (3, "Caroline");

INSERT INTO Client
  VALUES (4, "Denis");

-- Show clients
SELECT * FROM Client;

-- Contrat(idCo,&idCl,addresse);
INSERT INTO Contrat 
  VALUES (1, 3, "Vienne");

INSERT INTO Contrat
  VALUES (2, 1, "Lyon");

INSERT INTO Contrat
  VALUES (3, 2, "Grenoble");

INSERT INTO Contrat
  VALUES (4, 2, "Rennes");

-- Show clients
SELECT * FROM Contrat;

-- Sinistre(idSi,&idCo,dateSi);
INSERT INTO Sinistre 
  VALUES (1, 2, '2008-01-01');

INSERT INTO Sinistre
  VALUES (2, 2, "2009-01-01");

INSERT INTO Sinistre
  VALUES (3, 3, "2010-01-01");

INSERT INTO Sinistre
  VALUES (4, 5, "2011-01-01");

-- Show Sinistre
SELECT * FROM Sinistre;

-- Intervention(idInt,&idSi,cout,societe);
INSERT INTO Intervention 
  VALUES (1, 2, 1000, "SARL1");

INSERT INTO Intervention
  VALUES (2, 2, 2000, "SARL2");

INSERT INTO Intervention
  VALUES (3, 5, 300, "SARL3");

INSERT INTO Intervention
  VALUES (4, 4, 4000, "SARL4");

-- Show Intervention
SELECT * FROM Intervention;
