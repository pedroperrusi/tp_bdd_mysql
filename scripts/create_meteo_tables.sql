-- Imports data from the CSV files on meteo_data/

-- clean previous tables
DROP TABLE IF EXISTS TempsPresent;
DROP TABLE IF EXISTS Mesure;
DROP TABLE IF EXISTS Station;
DROP TABLE IF EXISTS Ville;
DROP TABLE IF EXISTS Limitrophe;
DROP TABLE IF EXISTS Region;

-- Create Region table
CREATE TABLE Region
(
    idRegion  INT PRIMARY KEY,
    nomRegion VARCHAR(50)
)ENGINE=MYISAM;

-- Effetively load data
LOAD DATA LOCAL INFILE 'meteo_data/Region.csv' INTO TABLE Region
FIELDS TERMINATED BY ',' ;
SELECT * FROM Region;