APPLICATION LOCALE - VERSION MULTI-PIECES + MODIFICATIONS

Nouveautés :
- Dans un entretien, tu peux sélectionner plusieurs pièces utilisées.
- Exemple : Disques + Plaquettes sur le même entretien.
- Chaque pièce a sa quantité.
- Toutes les pièces sont décomptées automatiquement du stock.
- Tu peux modifier un entretien déjà saisi : le stock est corrigé automatiquement.
- Tu peux supprimer un entretien : le stock est recrédité automatiquement.
- Tu peux modifier ou supprimer une saisie carburant / AdBlue.

Utilisation :
1. Dézipper le dossier.
2. Ouvrir index.html avec Chrome, Edge, Firefox ou Safari.
3. Les anciennes données locales sont récupérées automatiquement si elles existent.
4. Utiliser “Exporter sauvegarde” régulièrement.


MISE A JOUR :
- Stock pièces : bouton Supprimer.
- Parc camions : champ Commentaire.
- Alertes vidange uniquement : 2 000 km avant le prochain kilométrage de vidange.
- Plaquettes, disques et autres types ne créent pas d’alerte kilométrique.
- Une vidange saisie avec prochain km met à jour le parc camion.


MISE A JOUR KM AUTOMATIQUE :
- Dans la saisie Gasoil / AdBlue, quand tu sélectionnes une plaque, le champ "Km début jour" reprend automatiquement le dernier "Km fin jour" enregistré pour ce même camion.
- Tu peux quand même modifier le kilométrage manuellement si besoin.


MISE À JOUR :
- Tableau de bord : alertes importantes = pièces à commander + entretiens/vidanges uniquement.
- Onglet Alertes : toutes les alertes + filtre semaine pour AdBlue.
- Saisie conso : recherche plaque partielle, ex. 705.
- Km début séparé selon Gasoil ou AdBlue.
- Bilans conso : dates début/fin avec calendrier, coûts gasoil/adblue, tri conso, surconsommation.
- Parc camion : conso max paramétrable par camion.
- Entretiens : filtre plaque, date et type.


SAUVEGARDE INTÉGRÉE :
- La sauvegarde fournie "sauvegarde_flotte_2026-06-10 (1).json" est intégrée directement dans l'application.
- Au premier lancement, si aucune donnée existante n'est trouvée dans le navigateur, l'application charge automatiquement cette sauvegarde.
- Si des données existent déjà dans le navigateur, elles ne sont pas écrasées.
- Tu peux toujours utiliser "Importer sauvegarde" si tu veux forcer le remplacement.


VERSION EN LIGNE PARTAGÉE :
Cette version garde la même interface que la version locale, mais sauvegarde les données dans Supabase.

INSTALLATION :
1. Créer un projet Supabase.
2. Aller dans SQL Editor.
3. Copier/coller le fichier supabase/schema.sql puis Run.
4. Ouvrir config.js.
5. Remplacer :
   - window.SUPABASE_URL
   - window.SUPABASE_ANON_KEY
6. Mettre le dossier sur GitHub.
7. Déployer sur Vercel.

FONCTIONNEMENT :
- Au premier lancement, l'application envoie la sauvegarde intégrée dans Supabase.
- Ensuite, tous les ordinateurs utilisent les mêmes données.
- Le bouton "Forcer sauvegarde en ligne" permet de forcer l'envoi si besoin.
- Une copie locale reste conservée en cache dans le navigateur.


MISE A JOUR :
- Parc camion : ajout du bouton Supprimer.
- La suppression du camion ne supprime pas les anciens historiques carburant/entretien.


VERSION 2 PRO :
- Design plus professionnel.
- Nouvel onglet "Problèmes camions".
- Suivi des problèmes ouverts, en cours, urgents, immobilisants et réparés.
- Modification d’un problème une fois réparé.
- Historique des problèmes réparés conservé.
- Les problèmes urgents et immobilisants remontent dans le tableau de bord.


VERSION 3 DESIGN :
- Interface plus proche d’un logiciel professionnel.
- Menu latéral.
- En-tête modernisé.
- Cartes KPI plus lisibles.
- Tableaux modernisés.
- Meilleure lisibilité mobile.
- Synthèse des problèmes camions sur le tableau de bord.
