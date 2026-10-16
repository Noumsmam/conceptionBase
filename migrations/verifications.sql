-- etape 1
SELECT * FROM Plat ORDER BY Plat.prix DESC;

-- etape 2
SELECT c.id_categorie, c.libelle, COUNT(p.id_plat) AS nombre_plats
FROM Categorie c
LEFT JOIN Plat p ON c.id_categorie = p.id_categorie
GROUP BY c.id_categorie, c.libelle;