CREATE TABLE Client (
    id_client SERIAL PRIMARY KEY,
    nom VARCHAR(100) NOT NULL
);

ALTER TABLE Commande ADD COLUMN id_client INTEGER;

ALTER TABLE Commande ADD CONSTRAINT fk_commande_client
FOREIGN KEY (id_client)
REFERENCES Client(id_client);

INSERT INTO Client (nom)
VALUES
('Rakoto'),
('Rabe');

INSERT INTO Commande (date, id_client)
VALUES
('2026-10-17', 1),
('2026-10-17', 2);

INSERT INTO Commande_plat (id_commande, id_plat, quantite)
VALUES
(3, 1, 1),
(3, 3, 2),
(4, 2, 1);