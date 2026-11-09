# Week 9 - Database Backup and Recovery

## Overview
This lab demonstrates PostgreSQL backups,
database restoration, and monitoring.

## Backup
backup.sh creates PostgreSQL SQL backups.
A custom-format backup was also created
using pg_dump.

## Recovery
restore.sh restores a custom-format backup
using pg_restore.

The recovery test was performed using a
separate database to protect the original.

## Results
- Original ticket count: 1
- Restored ticket count: 1
- Recovery Time (RTO): 61 seconds
- Backup age was measured for RPO.

## Monitoring
check.sh verifies:
- Database connectivity
- PostgreSQL exporter availability
- Backup freshness
- Backup readability
- Cron backup schedule

## Limitations
Backups must be tested regularly.
Monitoring depends on working services.

