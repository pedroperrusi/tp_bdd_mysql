-- TP 4: Requetes SQL

-- Preamble: Afficher les informations de creation de chaque table
select 'Contry Table' AS '';
EXPLAIN Country;
select 'City Table' AS '';
EXPLAIN City;
select 'Country Langage Table' AS '';
EXPLAIN CountryLanguage;

-- -- Q1: Visualisez les informations de la table Country
-- SELECT
--     * 
--     FROM
--         Country;

-- -- Q2: Visualisez les informations de la table City
-- SELECT
--     * 
--     FROM
--         City;

-- -- Q3: Visualisez les informations de la table CountryLanguage
-- SELECT
--     * 
--     FROM
--         CountryLanguage;

-- Q4: Combien y a t'il de ville ?
SELECT 
    COUNT(*) AS 'Q4: Quantite de Villes'
    FROM
        City;
-- Q5: Combien y a t'il de pays ?
SELECT 
    COUNT(*) AS 'Q5: Quantite de Pays'
    FROM
        Country;
-- Q6: Combien y a t'il de langues ?
SELECT 
    COUNT(distinct Language) AS 'Q6: Quantite de Langues'
    FROM
        CountryLanguage;

-- Q7: Donnez la capitale de chaque pays
SELECT
    Country.Name AS 'Q7: Pays', City.Name AS 'Capitale'
    FROM
        City INNER JOIN Country  
    ON 
        City.Id = Country.Capital; 

-- Q8: Quel est le pays avec la plus grande surface; la plus petite ?
SELECT
    Name AS 'Q8: Pays de Min and Max Surface', SurfaceArea
    FROM
        Country
    WHERE
        SurfaceArea = (SELECT MAX(SurfaceArea) FROM Country)
        OR 
        SurfaceArea = (SELECT MIN(SurfaceArea) FROM Country)
    GROUP BY SurfaceArea;

-- Q9: Quel est le pays avec le moins de population ?
SELECT
    Name AS 'Q9: Pays de moins population', Population
    FROM
        Country
    WHERE 
        Population = (SELECT MIN(Population) FROM Country);

-- Q10: Quel est la population mondiale ?
SELECT
    SUM(Population) AS 'Q10: Population Mondiale'
    FROM
        Country;

-- Q11: Quel est la esperance de vie moyenne par continent ?
SELECT
    Continent 'Q11: Continent', AVG(LifeExpectancy)
    FROM 
        Country
    GROUP BY Continent;

-- Q12: Quel est la moyenne de la population des villes par pays ?
SELECT 
    Country.Name 'Q12: Pays', AVG(City.Population) AS 'Population Moyenne'
    FROM
        Country INNER JOIN City
        ON
        Country.Code = City.CountryCode
    GROUP BY
        Country.Name;

-- Q13: Visualiser l'integralite des donnes tries par pays et ville ?
SELECT
    Country.Name AS 'Q13: Pays', City.Name
    FROM    
        Country 
        INNER JOIN City
            ON
                Country.Code = City.CountryCode;

-- Q14: Population Moyenne des villes par pays ? 
SELECT 
    Country.Name AS 'Q14: Pays', AVG(City.Population) AS 'Population Moyenne'
    FROM
        Country INNER JOIN City
        ON
        Country.Code = City.CountryCode
    GROUP BY
        Country.Name;

-- -- Q15: Donnez les langues parles et sa pourcentage par pays
-- SELECT
--     Country.Name AS 'Q15: Pays', Language, Percentage
--     FROM    
--         Country 
--         INNER JOIN 
--             CountryLanguage
--             ON
--                 Country.Code = CountryLanguage.CountryCode;

-- Q16: Donner les pays aui n'ayent pas encore eu leur independance 
SELECT
    Name AS 'Q16: Pays pas encore independents', IndepYear
    FROM
        Country
    HAVING
        IndepYear IS NULL;

-- Q17: Quels sont les pays qui parlent le francais a plus de 10%
SELECT
    Country.Name AS 'Q17: Pays qui parlent le francais', Language, Percentage
    FROM    
        Country 
        INNER JOIN 
            CountryLanguage
            ON
                Country.Code = CountryLanguage.CountryCode
    WHERE
        Language = 'French'
        AND 
        Percentage > 10;

-- Q18: Quels sont les plut petits villes de chaque pays (moins de population) ?
SELECT
    Country.Name AS 'Q18: Pays', City.Name AS 'Plus Petite Ville', MIN(City.Population) AS 'Population'
    FROM
        Country 
        INNER JOIN City
            ON
                Country.Code = City.CountryCode
    GROUP BY
        Country.Name;

-- Q19: Quels sont les pays qui ont un GNP superieur au GNP moyen ?
SELECT
    Name as 'Q19: Pays sur le GNP avg', GNP
    FROM
        Country
    HAVING
        GNP > (SELECT AVG(GNP) FROM Country)
    ORDER BY
        GNP DESC;
    
-- Q20: Quels sont les pays qui ont entre 10 et 50 villes ?
SELECT 
    Country.Name AS 'Q20: Pays de ville entre 10 et 50', COUNT(City.Name) AS N_Ville
    FROM
        Country INNER JOIN City
        ON
        Country.Code = City.CountryCode
    GROUP BY
        Country.Name
    HAVING 
        N_Ville > 10
        AND
        N_Ville <50;

-- Q21: Existe-t-il des pays dont aucune ville n'a une population depassant 100 000

-- SELECT CountryCode, MAX(Population) as mp FROM City GROUP BY CountryCode HAVING mp < 100000;

SELECT
    Country.Name AS 'Q21: Pays dont aucune ville ne depasse 100 000 habitants', MAX(City.Population) AS max_population
    FROM
        Country INNER JOIN City
        ON
        Country.Code = City.CountryCode
    GROUP BY
        Country.Name
    HAVING
        max_population < 100000;
