PERSPICACE OS — MODULE AJOUTABLE SANS ÉCRASER LES FICHIERS EXISTANTS

IMPORTANT
- Ce paquet est un module de départ qui ajoute de nouveaux fichiers.
- Il ne remplace pas index.html, index.js, admin.html, about.html, contact.html, package.json ou les autres fichiers existants.
- Le mode démonstration local ne synchronise PAS les fichiers entre visiteurs.
- Pour un vrai stockage en ligne, crée un projet Supabase gratuit, configure le stockage et les règles d'accès, puis complète supabase-config.js.
- Ne mets jamais une clé service_role dans un fichier public. Seule une clé anon/publishable est acceptable côté navigateur, avec des règles RLS et Storage correctement configurées.
- Le PIN seul dans le navigateur n'est pas une sécurité suffisante pour protéger des fichiers privés. Les règles de stockage côté serveur doivent faire respecter les permissions.

FICHIERS AJOUTÉS
- fichiers-public.html : bibliothèque publique des fichiers.
- admin-fichiers.html : interface mobile de gestion.
- supabase-config.js : emplacement pour les paramètres publics Supabase.
- supabase-schema.sql : schéma indicatif à appliquer dans Supabase SQL Editor, puis vérifier les politiques avant mise en production.

INSTALLATION CONSEILLÉE AVEC TERMUX
1. Ouvre Termux.
2. Installe Git si nécessaire : pkg update && pkg install git
3. Clone ton dépôt dans un nouveau dossier de travail (ne travaille pas directement dans ton dossier original) :
   git clone https://github.com/thomiphoneklk-cmyk/Perspicace-os.git Perspicace-os-test
   cd Perspicace-os-test
4. Fais une sauvegarde locale avant toute modification :
   cp -r . ../Perspicace-os-test-backup
5. Décompresse ce ZIP dans Perspicace-os-test et vérifie les fichiers avant de les envoyer sur GitHub.
6. Ne remplace pas l'admin.html actuel : le nouveau module s'appelle admin-fichiers.html.

Le module est volontairement séparé de la page d'accueil pour ne pas casser les fonctions existantes.
