CREATE TABLE Categorie (
   id_categorie SERIAL PRIMARY KEY,
   libelle VARCHAR(100) NOT NULL
);

INSERT INTO Categorie(libelle) VALUES 
   ('Plat Malagasy'),
   ('Plat chinois'),
   ('Soupe'),
   ('Dessert et gouter'),
   ('boisson');

ALTER TABLE Plat ADD COLUMN id_categorie INT NOT NULL DEFAULT 0;

ALTER TABLE Plat ADD CONSTRAINT fk_plat_categorie
FOREIGN KEY (id_categorie)
REFERENCES Categorie(id_categorie);

UPDATE Plat SET id_categorie = 1 WHERE id_plat = 1;
UPDATE Plat SET id_categorie = 1 WHERE id_plat = 2;
UPDATE Plat SET id_categorie = 1 WHERE id_plat = 3;
UPDATE Plat SET id_categorie = 2 WHERE id_plat = 4;
UPDATE Plat SET id_categorie = 3 WHERE id_plat = 5;
UPDATE Plat SET id_categorie = 4 WHERE id_plat = 6;
UPDATE Plat SET id_categorie = 5 WHERE id_plat = 7;
