# Etape 1
INT pour le prix car on a besoin d'un entier 

# Etape 2
il ne faut pas ajouter une colonne categorie en varchar dans la table plat pour eviter le faute de casse ou d orthographe et pour pouvoir les regrouper par categorie

exemple : 

|id|nom|prix|categorie|
|---|---|---|---|
|1|romazava|5000|plat malagasy|
|2|henakisoa|6000|plats gasy|

# Etape 3
on place la quantite dans une table associative entre la table commande et la table plat

# Etape 4 
- La cle etrangere n est pas not null pour permettre d avoir des client non habituer 
- Il faut utiliser LEFT JOIN pour ne perdre aucune commande 

# Etape 5 
- une table et une commande sont differente car une table peut avoir plusieurs commande mais que une commande est unique et ne peut avoir qu une et une seule table 
-en sql le mot table pose probleme car c est un mot reservé
