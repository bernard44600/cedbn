# Fiches — composition A4

Deux usages, une seule page (`index.html`) :

1. **Consulter** — chaque fichier `.drawio` du dossier `drawio/` est listé et rendu en vignette ; un clic ouvre la fiche en grand.
2. **Composer** — on ajoute des fiches à la planche A4 (4 × 2 = 8 emplacements), puis
   **🖨️ Imprimer / PDF** → dans la boîte d'impression, choisir « Enregistrer au format PDF ».
   L'aperçu de la planche suit le format A4 paysage (297 × 210 mm), marges à zéro.

Fonctions utiles :
- **Lien de cette sélection** copie une URL du type `?f=A,C,Complet…` : elle rouvre la même planche.
- ↻ sur une case pour la remplacer, ✕ pour la vider.
- Aucun identifiant de lettre en dur : la liste vient des fichiers présents.

## Technique

- Rendu des `.drawio` : `viewer-static.min.js` de diagrams.net, chargé depuis leur CDN
  (aucune conversion préalable, les fichiers restent la source).
- `drawio/index.json` (liste des fiches) est **généré au déploiement** par le workflow
  (GitHub Pages ne donne pas l'accès au contenu d'un dossier). En local, sans ce fichier,
  la page tente une liste via l'API GitHub.
- `compose.html` est l'ancien essai (lettres A..O + images Google Photos) : conservé pour
  mémoire, il n'est plus utilisé.
