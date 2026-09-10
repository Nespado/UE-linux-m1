#!/usr/bin/env bash
set -euo pipefail

SEUIL=3
LOG_FILE="/var/log/apache2/access.log"
BAN_FILE="/etc/apache2/ban.conf"

ban() {
    ip="$1"
    if ! grep -qF "Require not ip $ip" "$BAN_FILE" 2>/dev/null; then
        echo "Require not ip $ip" >> "$BAN_FILE"
    fi
}


awk '$9 ~ /^4/ { print $1 }' "$LOG_FILE" | \
    sort | \
    uniq -c | \
    awk -v seuil="$SEUIL" '$1 >= seuil { print $2 }' | \
    while read -r ip; do
        ban "$ip"
    done
systemctl reload apache2
