#!/usr/bin/env bash
set -euo pipefail

exec 200> /tmp/toto.lock

if ! flock -n 200; then
  echo "Erreur : une autre instance du script est déjà en cours d'exécution." >&2
  exit 1
fi

echo "Verrous acquis. Traitement en cours.."

sleep 10
