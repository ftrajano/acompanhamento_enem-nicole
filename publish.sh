#!/usr/bin/env bash
# Sincroniza o material DO ALUNO para docs/ (pasta que o GitHub Pages publica).
# Publica APENAS index.html, lessons/ e reference/.
# Mantém privados: MISSION.md, NOTES.md, RESOURCES.md e learning-records/.
set -euo pipefail
cd "$(dirname "$0")"

rm -rf docs
mkdir -p docs
cp index.html docs/
cp -R lessons   docs/lessons
cp -R reference docs/reference
touch docs/.nojekyll   # evita que o GitHub Pages processe os arquivos com Jekyll

echo "✅ docs/ atualizado a partir de index.html + lessons/ + reference/"
echo "   Agora: git add docs && git commit -m 'Atualiza site' && git push"
