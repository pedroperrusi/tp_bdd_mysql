-- Exam 2018-19

-- Preamble: Afficher les informations de creation de chaque table
select 'CINEMA Table' AS '';
EXPLAIN CINEMA;
select 'FILM Table' AS '';
EXPLAIN FILM;
select 'DISTRIBUTION Table' AS '';
EXPLAIN DISTRIBUTION;
select 'PROGRAMME Table' AS '';
EXPLAIN PROGRAMME;
select 'SALLE Table' AS '';
EXPLAIN SALLE;

-- Q7
SELECT
    nomCine, nbPlaces
    FROM
        SALLE
    ORDER BY
        nbPlaces DESC;

-- Q9
SELECT
    nomCine, nbPlaces
    FROM
        SALLE
    HAVING
        nbPlaces = (SELECT 
                        MAX(nbPlaces)
                        FROM
                            SALLE);

-- Q13
SHOW CREATE TABLE FILM;
SHOW CREATE TABLE CINEMA;
SHOW CREATE TABLE PROGRAMME;
SHOW CREATE TABLE SALLE;

-- Afficher tous les donnees
SELECT
    *
    FROM
        CINEMA 
        NATURAL JOIN 
        SALLE
        NATURAL JOIN
        PROGRAMME
        NATURAL JOIN
        FILM
        NATURAL JOIN
        DISTRIBUTION;

-- Q10
SELECT
    titre, SUM(nbEntrees) AS totalEntrees
    FROM
        PROGRAMME
    GROUP BY
        titre
    HAVING
        totalEntrees > 5000;

-- Q11
SELECT
    titre, pays, COUNT(acteur)
    FROM
        FILM
        NATURAL JOIN
        DISTRIBUTION
    GROUP BY
        titre
    HAVING
        pays = 'France';

-- SELECT
--     titre, pays, acteur
--     FROM
--         FILM
--         NATURAL JOIN
--         DISTRIBUTION
--     HAVING
--         pays = 'France';

-- Q1
SELECT
    titre, pays, realisateur
    FROM
        FILM
    WHERE
        realisateur = 'fred';

-- Q2
SELECT
    acteur
    FROM
        FILM
        NATURAL JOIN
        DISTRIBUTION
    WHERE
        realisateur = 'Steven Spielberg';

-- Q6
SELECT
    MIN(nbPlaces), MAX(nbPlaces), AVG(nbPlaces)
    FROM
        SALLE;

-- Q8
SELECT
    titre, nomCine, SUM(nbEntrees) AS totalEntrees
    FROM
        PROGRAMME
    WHERE
        titre = 'Un air de famille'
        AND
        nomCine = 'Cameo Commanderie';

-- Q12
SELECT
    titre
    FROM
        PROGRAMME
        NATURAL JOIN
        SALLE
    WHERE
        dolby = 1
    GROUP BY
        titre;

-- Q3
SELECT
    nomCine
    FROM
        FILM
        NATURAL JOIN
        DISTRIBUTION
        NATURAL JOIN
        SALLE
    WHERE
        pays = 'France'
        AND
        acteur = 'Albert Dupontel'
    GROUP BY
        nomCine;

-- Q5
SELECT
    nomCine, titre, pays, annee
    FROM
        FILM
        NATURAL JOIN
        DISTRIBUTION
        NATURAL JOIN
        SALLE
    WHERE
        pays = 'USA'
        AND
        annee = 1994
    GROUP BY
        nomCine;

-- Q4
SELECT
    titre
    FROM
        FILM
    WHERE
        titre NOT IN (SELECT titre FROM PROGRAMME);

-- Q14
SELECT
    noSalle, nomCine
    FROM
        SALLE
    WHERE
        nomCine NOT IN (SELECT nomCine FROM CINEMA);

SELECT
    titre, acteur
    FROM
        DISTRIBUTION
    WHERE
        titre NOT IN (SELECT titre FROM FILM);
