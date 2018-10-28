-- Inserption de quelques données

-- Q1:
INSERT INTO 
    Client
    VALUES 
        (5, 'Frank Loyd Wright');

-- Q2:
INSERT INTO 
    Client
    VALUES 
        (6, 'Corbursier'); 

INSERT INTO 
    Contrat
    VALUES 
        (5, 6, 'Villa Pallet, Chaux-de-Fonds');

INSERT INTO
    Sinistre
    VALUES
        (5, 5, '2003-12-24');

INSERT INTO
    Intervention
    VALUES
        (5, 5, 3200.50, 'Porr AG');

INSERT INTO
    Sinistre
    VALUES
        (6, 5, '2004-01-10');

INSERT INTO
    Intervention
    VALUES
        (6, 6, 123.3, 'Porr AG');

-- Q3:
INSERT INTO
    Client
    VALUES
        (7, 'Antonio Gaudi');
-- Dois enderecos
INSERT INTO 
    Contrat
    VALUES 
        (6, 7, 'Parc Guell, Barcelona');

INSERT INTO 
    Contrat
    VALUES 
        (7, 7, 'Sagrada Familia, Barcelona');
-- Deux sinistres et trois interventions
INSERT INTO
    Sinistre
    VALUES
        (7, 7, '2002-12-10');
INSERT INTO
    Intervention
    VALUES
        (7, 7, 5000, 'Ballihurton Inc.');

INSERT INTO
    Sinistre
    VALUES
        (8, 7, '2005-01-20');
INSERT INTO
    Intervention
    VALUES
        (8, 8, 3000.5, 'Held & Frank');
INSERT INTO
    Intervention
    VALUES
        (9, 8, 332.5, 'Porr AG');

-- Q4
INSERT INTO
    Client
    VALUES
        (8, 'Friedesreich Hundertwasser');
INSERT INTO
    Contrat
    VALUES
        (8, 8, '13, rue Adolf Loos, Fontaine\S');
INSERT INTO
    Sinistre
    VALUES
        (9, 8, '2004-10-18');
INSERT INTO
    Intervention
    VALUES
        (10, 9, 30000.2, 'Gouybes SA');


