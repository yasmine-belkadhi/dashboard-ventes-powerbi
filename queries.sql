-- Chiffre d'affaires par région
SELECT c.region,
       SUM(cmd.montant)        AS chiffre_affaires,
       COUNT(cmd.id_commande)  AS nb_commandes,
       ROUND(AVG(cmd.montant), 2) AS panier_moyen
FROM commandes cmd
JOIN clients c ON cmd.id_client = c.id_client
GROUP BY c.region
ORDER BY chiffre_affaires DESC;
-- Évolution mensuelle des ventes
SELECT MONTH(date_commande) AS mois,
	  YEAR(date_commande)  AS annee,
       SUM(montant)         AS total_ventes
FROM commandes
GROUP BY annee, mois
ORDER BY annee, mois;
-- Top 5 produits
SELECT p.nom, p.categorie,
       SUM(cmd.quantite) AS total_vendus,
       SUM(cmd.montant)  AS revenu_total
FROM commandes cmd
JOIN produits p ON cmd.id_produit = p.id_produit
GROUP BY p.nom, p.categorie
ORDER BY revenu_total DESC
LIMIT 5;