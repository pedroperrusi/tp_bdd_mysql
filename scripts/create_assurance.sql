-- Drop all tables
-- order matters, once the tables have foregin key dependencies;

DROP TABLE IF EXISTS Intervention;
DROP TABLE IF EXISTS Sinistre;
DROP TABLE IF EXISTS Contrat;
DROP TABLE IF EXISTS Client;

-- Client(id,nom);

CREATE TABLE Client
(
    idCl        INT AUTO_INCREMENT PRIMARY KEY,
    nom       VARCHAR(30)
)ENGINE=MYISAM;

-- Contrat(idCo,&idCl,addresse);

CREATE TABLE Contrat
(
    idCo        INT AUTO_INCREMENT PRIMARY KEY,
    idCl        INT,
    FOREIGN KEY(idCl) 
	REFERENCES Client(id),
    addresse    VARCHAR(30)
)ENGINE=MYISAM;

-- Sinistre(idSi,&idCo,dateSi);

CREATE TABLE Sinistre
(
    idSi        INT AUTO_INCREMENT PRIMARY KEY,
    idCo        INT,
    FOREIGN KEY(idCo) 
	REFERENCES Contrat(idCo),
    dateSi      DATE
)ENGINE=MYISAM;

-- Intervention(idInt,&idSi,cout,societe);

CREATE TABLE Intervention
(
    idInt       INT AUTO_INCREMENT PRIMARY KEY,
    idSi        INT,
    FOREIGN KEY(idSi) 
	REFERENCES Sinistre(idSi),
    cout        FLOAT,
    societe     VARCHAR(30)
)ENGINE=MYISAM;

SHOW TABLES

