    CREATE TABLE Plat (
        id_plat SERIAL PRIMARY KEY,
        nom VARCHAR(100) NOT NULL,
        prix INT NOT NULL
    );

   
    INSERT INTO Plat(nom,prix) VALUES 
    ('Romazava',7000),
    ('Ravitoto sy henakisoa',8000),
    ('Akoho sy voanjo',8500),
    ('Mi sao',6000),
    ('Soupe chinoise',5000),
    ('Mofo gasy',1000),
    ('Ranon ampango',500);
