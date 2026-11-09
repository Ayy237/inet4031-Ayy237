#!/usr/bin/env bash
set -euo pipefail

BACKUP_DIR="$HOME/backups"
TIMESTAMP=$(date +%Y%m%d-%H%M%S)
BACKUP_FILE="$BACKUP_DIR/backup-$TIMESTAMP.sql"

mkdir -p "$BACKUP_DIR"

echo "Starting PostgreSQL backup..."

kubectl exec deploy/db -- sh -c \
  'exec pg_dump -U "$POSTGRES_USER" -d "$POSTGRES_DB"' \
  > "$BACKUP_FILE"

if [ ! -s "$BACKUP_FILE" ]; then
  echo "ERROR: Backup is empty!"
  rm -f "$BACKUP_FILE"
  exit 1
fi

echo "Backup successful: $BACKUP_FILE"

# Keep the newest 12 backups
find "$BACKUP_DIR" -maxdepth 1 -type f \
  -name 'backup-*.sql' -printf '%f\n' |
  sort -r |
  tail -n +13 |
  while IFS= read -r file; do
    rm -f "$BACKUP_DIR/$file"
  done

echo "Backup completed."
