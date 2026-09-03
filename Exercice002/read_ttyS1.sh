#!/bin/bash

DEVICE="/dev/ttyS1"

stty -F "$DEVICE" 9600 raw -echo 2>/dev/null

echo "== Écoute sur $DEVICE... =="

while IFS= read -r -n 1 char; do
  TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
  printf "[%s] Caractère reçu : %q\n" "$TIMESTAMP" "$char"
done < "/dev/ttyS1"
