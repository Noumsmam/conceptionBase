-- etape 1
SELECT * FROM Plat ORDER BY Plat.prix DESC;

-- etape 2
SELECT c.id_categorie, c.libelle, COUNT(p.id_plat) AS nombre_plats
FROM Categorie c
LEFT JOIN Plat p ON c.id_categorie = p.id_categorie
GROUP BY c.id_categorie, c.libelle;

-- etape 3 
SELECT 
    c.id_commande,
    c.date,
    SUM(p.prix * cp.quantite) AS prix_commande
FROM Commande c
JOIN Commande_plat cp ON c.id_commande = cp.id_commande
JOIN Plat p ON cp.id_plat = p.id_plat
GROUP BY c.id_commande, c.date;