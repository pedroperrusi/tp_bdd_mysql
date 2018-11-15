DROP TABLE IF EXISTS Mesure;
DROP TABLE IF EXISTS TempsPresent;
DROP TABLE IF EXISTS Station;
DROP TABLE IF EXISTS Limitrophe;
DROP TABLE IF EXISTS Ville;
DROP TABLE IF EXISTS Region;

CREATE TABLE Region
(
    idRegion         INT PRIMARY KEY,
    nomRegion         VARCHAR(50)
);

CREATE TABLE Ville
(
    idVille         INT PRIMARY KEY,
    nomVille         VARCHAR(50),
    codRegion         INT,
    FOREIGN KEY(codRegion) REFERENCES Region(idRegion)
);

CREATE TABLE Limitrophe
(
    codRegion1         INT,
    codRegion2         INT,
    FOREIGN KEY(codRegion1) REFERENCES Region(idRegion),
    FOREIGN KEY(codRegion2) REFERENCES Region(idRegion),
    PRIMARY KEY(codRegion1,codRegion2)
);

CREATE TABLE Station
(
    idOMM         INT PRIMARY KEY,
    latitude           FLOAT,
    longitude           FLOAT,
    altitude         INT,
    codVille         INT,
    FOREIGN KEY(codVille) REFERENCES Ville(idVille)
);

CREATE TABLE TempsPresent
(
    idTempsPresent          INT PRIMARY KEY,
    description         VARCHAR(200)
);

CREATE TABLE Mesure
(
    idMesure          INT PRIMARY KEY,
    dateMesure         DATETIME    NOT NULL,
    pressionMer		INT,
    directionVent		INT,
    vitesseVent		FLOAT,
    temperature		FLOAT,
    humidite		INT,
    nebulosite		INT,
    pressionStation		INT,
    hauteurNeige		FLOAT,
    codStation         INT,
    codTempsPresent        INT,
    FOREIGN KEY(codStation) REFERENCES Station(idOMM),
    FOREIGN KEY(codTempsPresent) REFERENCES TempsPresent(idTempsPresent)
);







