CREATE TABLE server (
    id_server SERIAL PRIMARY KEY,
    nom VARCHAR(100) NOT NULL
);

CREATE TABLE table_gargotte (
    id_table SERIAL PRIMARY KEY,
    libelle VARCHAR(100) NOT NULL
);

CREATE TABLE type_commande (
    id_type SERIAL PRIMARY KEY,
    libelle VARCHAR(100) NOT NULL
);

ALTER TABLE commande
ADD COLUMN id_server INTEGER,
ADD COLUMN id_table INTEGER,
ADD COLUMN id_type INTEGER;

ALTER TABLE commande
ADD CONSTRAINT fk_commande_server
    FOREIGN KEY (id_server)
    REFERENCES server(id_server),

ADD CONSTRAINT fk_commande_table
    FOREIGN KEY (id_table)
    REFERENCES table_gargotte(id_table),

ADD CONSTRAINT fk_commande_type
    FOREIGN KEY (id_type)
    REFERENCES type_commande(id_type);

INSERT INTO server (nom)
VALUES
    ('Njaka Rakoto'),
    ('Lalao Rasoa');

INSERT INTO table_gargotte (libelle)
VALUES
    ('Table 1'),
    ('Table 2'),
    ('Table 3'),
    ('Table 4'),
    ('Table 5'),
    ('Table 6'),
    ('Table 7'),
    ('Table 8');

INSERT INTO type_commande (libelle)
VALUES
    ('Sur place'),
    ('À emporter');

INSERT INTO commande
    (date, id_client, id_server, id_table, id_type)
VALUES
    (CURRENT_DATE, 1, 1, 1, 1),
    (CURRENT_DATE, 2, 1, 2, 2),
    (CURRENT_DATE, null, 2, null, 1);

INSERT INTO commande_plat (id_commande, id_plat, quantite)
VALUES
    (11, 1, 2),
    (11, 2, 1),

    (12, 3, 1),
    (12, 4, 2),

    (13, 5, 2),
    (13, 6, 3);