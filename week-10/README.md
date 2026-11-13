# Week 10 – Performance Lab

## Overview
This lab focuses on monitoring and improving application
performance using Kubernetes, PostgreSQL, and OpenTofu.

## Verification
Run the following command from the repository root:

./week-10/check.sh

## Results
- PostgreSQL pg_stat_statements enabled
- Database index verified
- Web CPU limit configured to 500m
- Web application running image v2
- OpenTofu reports no drift
- Load-test workflow and p95 threshold verified
- Restored load test p95: 52 ms

All nine verification checks passed.
