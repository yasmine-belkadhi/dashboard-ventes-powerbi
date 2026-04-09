-- Insérer les produits
INSERT INTO produits (nom, categorie, prix) VALUES ('Laptop Pro', 'Informatique', 1200);
INSERT INTO produits (nom, categorie, prix) VALUES ('Souris sans fil', 'Informatique', 35);
INSERT INTO produits (nom, categorie, prix) VALUES ('Bureau ergonomique', 'Mobilier', 450);
INSERT INTO produits (nom, categorie, prix) VALUES ('Chaise de bureau', 'Mobilier', 280);
INSERT INTO produits (nom, categorie, prix) VALUES ('Webcam HD', 'Informatique', 90);

-- Insérer les clients
INSERT INTO clients (nom, region, ville) VALUES ('Ahmed Ben Ali', 'Nord', 'Tunis');
INSERT INTO clients (nom, region, ville) VALUES ('Sarra Hamdi', 'Sud', 'Sfax');
INSERT INTO clients (nom, region, ville) VALUES ('Mohamed Trabelsi', 'Centre', 'Sousse');
INSERT INTO clients (nom, region, ville) VALUES ('Ines Bouaziz', 'Nord', 'Ariana');
INSERT INTO clients (nom, region, ville) VALUES ('Karim Gharbi', 'Est', 'Nabeul');

-- Insérer les 40 commandes
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (1,1,2,'2024-01-05',2400);
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (2,3,1,'2024-01-12',450);
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (3,2,3,'2024-01-20',105);
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (4,5,1,'2024-01-28',1200);
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (5,4,2,'2024-02-03',560);
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (1,2,1,'2024-02-14',35);
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (3,5,2,'2024-02-19',180);
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (2,1,1,'2024-02-25',1200);
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (4,3,3,'2024-03-07',1350);
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (5,2,2,'2024-03-15',70);
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (1,4,1,'2024-03-22',280);
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (2,5,1,'2024-03-30',90);
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (3,1,3,'2024-04-08',3600);
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (5,3,2,'2024-04-17',900);
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (4,2,4,'2024-04-25',140);
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (1,5,2,'2024-05-02',180);
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (2,4,1,'2024-05-11',280);
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (3,3,1,'2024-05-19',450);
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (4,1,2,'2024-05-27',2400);
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (5,5,3,'2024-06-04',270);
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (1,3,2,'2024-06-13',900);
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (2,2,5,'2024-06-21',175);
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (3,4,1,'2024-06-29',280);
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (4,5,4,'2024-07-08',360);
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (5,1,1,'2024-07-16',1200);
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (1,2,2,'2024-07-24',70);
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (2,3,1,'2024-08-01',450);
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (3,5,2,'2024-08-10',180);
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (4,4,3,'2024-08-19',840);
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (5,2,1,'2024-08-28',35);
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (1,1,1,'2024-09-05',1200);
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (2,4,2,'2024-09-14',560);
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (3,3,4,'2024-09-23',1800);
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (4,1,2,'2024-10-02',2400);
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (5,5,1,'2024-10-15',90);
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (1,3,3,'2024-10-24',1350);
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (2,2,2,'2024-11-06',70);
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (3,1,1,'2024-11-20',1200);
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (4,4,2,'2024-12-05',560);
INSERT INTO commandes (id_client, id_produit, quantite, date_commande, montant) VALUES (5,3,3,'2024-12-22',1350);