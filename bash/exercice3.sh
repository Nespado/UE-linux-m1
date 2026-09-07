#!/bin/bash

set -euo pipefail

directory_temp=$(mktemp -d "${1:-test.XXXXXX}")

cleanup() {	
	trap - EXIT INT TERM
	echo "Fichier temporaire supprimé"
	rm -rf $directory_temp
}

trap cleanup EXIT INT TERM


for i in {1..10}; do
	echo "Traitement en cours ($i/10)..."
	sleep 1
done
