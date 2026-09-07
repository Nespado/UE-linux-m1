#!/bin/sh

set -euo pipefail

log_error() {
	echo "[ERREUR] $*" >&2
}


SRC=${1:-/tmp/data}

if [ -e "$SRC" ];
then
	echo "Le repertoire $SRC existe"
else 
	log_error "Fichier inexistant"
	exit 1
fi
