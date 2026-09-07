#!/bin/bash
set -euo pipefail
echo "--Début du script--"
grep "inconnu" /fichier/inexistant | wc -l
echo "Variable absente : $VAR_ICONNUE"
echo "--Fin du script--"
