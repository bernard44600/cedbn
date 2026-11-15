#!/bin/sh
# Régénère drawio/index.json (liste des fiches) à partir du dossier drawio/.
# Utilisé comme filet de sécurité : la page interroge d'abord l'API GitHub,
# ce fichier ne sert que si l'API n'est pas joignable.
set -e
cd "$(dirname "$0")"
python3 - <<'PY'
import glob, json, os
fiches = sorted(os.path.splitext(os.path.basename(x))[0] for x in glob.glob('drawio/*.drawio'))
with open('drawio/index.json', 'w', encoding='utf-8') as f:
    json.dump(fiches, f, ensure_ascii=False, indent=1)
print(f"{len(fiches)} fiches → drawio/index.json")
PY
