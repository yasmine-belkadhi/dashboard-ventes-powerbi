USE ventes_db;
CREATE TABLE produits (
  id_produit  INT PRIMARY KEY AUTO_INCREMENT,
  nom         VARCHAR(100),
  categorie   VARCHAR(50),
  prix        DECIMAL(10,2)
);

CREATE TABLE clients (
  id_client  INT PRIMARY KEY AUTO_INCREMENT,
  nom        VARCHAR(100),
  region     VARCHAR(50),
  ville      VARCHAR(50)
);

CREATE TABLE commandes (
  id_commande   INT PRIMARY KEY AUTO_INCREMENT,
  id_client     INT,
  id_produit    INT,
  quantite      INT,
  date_commande DATE,
  montant       DECIMAL(10,2)
);

