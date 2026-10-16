CREATE TABLE Commande (
    id_commande SERIAL PRIMARY KEY,
    date DATE NOT NULL
);

CREATE TABLE Commande_plat (
    id_commande_plat SERIAL PRIMARY KEY,
    id_commande INTEGER NOT NULL,
    id_plat INTEGER NOT NULL,
    quantite INTEGER NOT NULL,

    CONSTRAINT fk_commande
        FOREIGN KEY (id_commande)
        REFERENCES Commande(id_commande),

    CONSTRAINT fk_plat
        FOREIGN KEY (id_plat)
        REFERENCES Plat(id_plat)
);

INSERT INTO Commande (date)
VALUES
('2026-10-15'),
('2026-10-16');

INSERT INTO Commande_plat (id_commande, id_plat, quantite)
VALUES
(1, 1, 2),
(1, 2, 1),
(1, 3, 3),
(2, 2, 2),
(2, 4, 1);