DELETE FROM Mesure;
DELETE FROM TempsPresent;
DELETE FROM Station;
DELETE FROM Limitrophe;
DELETE FROM Ville;
DELETE FROM Region;

LOAD DATA LOCAL INFILE 'meteo_data/corriges/Region.csv' INTO TABLE Region
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
-- LINES TERMNATED BY '\r\n'
IGNORE 1 LINES
(idRegion, nomRegion);

LOAD DATA LOCAL INFILE 'meteo_data/corriges/Ville.csv' INTO TABLE Ville
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
-- LINES TERMNATED BY '\r\n'
IGNORE 1 LINES
(idVille, nomVille, codRegion);

LOAD DATA LOCAL INFILE 'meteo_data/corriges/Limitrophe.csv' INTO TABLE Limitrophe
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
-- LINES TERMNATED BY '\r\n'
IGNORE 1 LINES
(codRegion1, codRegion2);

LOAD DATA LOCAL INFILE 'meteo_data/corriges/Station.csv' INTO TABLE Station
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
-- LINES TERMNATED BY '\r\n'
IGNORE 1 LINES
(idOMM, latitude, longitude, altitude, codVille);

LOAD DATA LOCAL INFILE 'meteo_data/corriges/TempsPresent.csv' INTO TABLE TempsPresent
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
-- LINES TERMNATED BY '\r\n'
IGNORE 1 LINES
(idTempsPresent, description);

LOAD DATA LOCAL INFILE 'meteo_data/corriges/Mesure.csv' INTO TABLE Mesure
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
-- LINES TERMNATED BY '\r\n'
IGNORE 1 LINES
(idMesure, dateMesure, pressionMer, directionVent, vitesseVent, temperature, humidite, nebulosite, pressionStation, hauteurNeige, codStation, codTempsPresent);












