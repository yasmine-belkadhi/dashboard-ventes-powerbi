# Tableau de Bord des Ventes 2024
> Projet académique | Licence Business Intelligence — ISG Tunis

## Description
Conception d'un tableau de bord interactif pour analyser les performances commerciales d'une entreprise par région, catégorie de produit et période. Le dashboard permet une analyse complète des ventes avec des filtres dynamiques.

## Technologies utilisées
| Outil | Rôle |
|---|---|
| **Power BI Desktop** | Création du tableau de bord interactif |
| **MySQL** | Base de données relationnelle |
| **MySQL Workbench** | Interface de gestion MySQL |
| **SQL** | Extraction et transformation des données |

## Architecture du projet

```
MySQL Database (ventes_db)
        │
        ├── Table: produits
        ├── Table: clients
        └── Table: commandes
              │
              ▼
        Power BI Desktop
              │
              ▼
     Tableau de Bord Interactif
```

## Modèle de données

```
produits ──────────────────────────────┐
  id_produit (PK)                       │
  nom                                   │
  categorie                             │ id_produit (FK)
  prix                                  │
                                        ▼
clients ──────────────► commandes
  id_client (PK)          id_commande (PK)
  nom                     id_client (FK)
  region                  id_produit (FK)
  ville                   quantite
                          date_commande
                          montant
```

## Fonctionnalités du dashboard

### KPIs principaux
-  **Chiffre d'Affaires Total** — somme de tous les montants
-  **Nombre de Commandes** — count des commandes
-  **Panier Moyen** — moyenne des montants par commande

### Visualisations
-  **Évolution mensuelle des ventes** — graphique en courbes sur 12 mois
-  **Ventes par région** — histogramme comparatif
-  **Répartition par catégorie** — graphique en camembert
-  **Filtres interactifs** — par année et par région (Slicers)

## Requêtes SQL utilisées

### Chiffre d'affaires par région
```sql
SELECT c.region,
       SUM(cmd.montant)        AS chiffre_affaires,
       COUNT(cmd.id_commande)  AS nb_commandes,
       ROUND(AVG(cmd.montant), 2) AS panier_moyen
FROM commandes cmd
JOIN clients c ON cmd.id_client = c.id_client
GROUP BY c.region
ORDER BY chiffre_affaires DESC;
```

### Évolution mensuelle des ventes
```sql
SELECT MONTH(date_commande) AS mois,
       YEAR(date_commande)  AS annee,
       SUM(montant)         AS total_ventes
FROM commandes
GROUP BY annee, mois
ORDER BY annee, mois;
```

### Top 5 produits
```sql
SELECT p.nom, p.categorie,
       SUM(cmd.quantite) AS total_vendus,
       SUM(cmd.montant)  AS revenu_total
FROM commandes cmd
JOIN produits p ON cmd.id_produit = p.id_produit
GROUP BY p.nom, p.categorie
ORDER BY revenu_total DESC
LIMIT 5;
```

## Structure du repository
```
📁 dashboard-ventes-powerbi/
├──  README.md
├──  create_tables.sql        # Script création des tables MySQL
├──  insert_data.sql          # Script insertion des données
├──  queries.sql              # Requêtes SQL d'analyse
├──  dashboard_ventes.pbix    # Fichier Power BI
└──  screenshots/
    ├── dashboard_final.png     # Capture du dashboard complet
    ├── model_relations.png     # Modèle de données Power BI
    └── mysql_tables.png        # Tables dans MySQL Workbench
```

## Résultats
-  Base de données MySQL avec 3 tables et 40 commandes
-  Relations entre tables correctement modélisées dans Power BI
-  Dashboard interactif avec 3 KPIs, 3 graphiques et 2 filtres
-  Chiffre d'affaires total : 31,21K
-  40 commandes analysées sur 12 mois

## Compétences démontrées
- Modélisation d'une base de données relationnelle (MySQL)
- Écriture de requêtes SQL avancées (JOIN, GROUP BY, agrégats)
- Connexion Power BI à une base de données externe
- Création de mesures DAX
- Conception de tableaux de bord interactifs
- Analyse des KPIs commerciaux

## Auteure
**Yasmine Belkadhi** — Étudiante en Licence Business Intelligence, ISG Tunis  
 Email: yasminebelkadhi857@email.com  
 [LinkedIn](https://linkedin.com/in/yasmine-belkadhi)  
 [GitHub](https://github.com/yasmine-belkadhi)
