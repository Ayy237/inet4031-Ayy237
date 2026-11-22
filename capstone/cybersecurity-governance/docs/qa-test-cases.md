# Lab 11 - Security QA Test Cases

| Test ID | Test Case | Expected Result | Status |
|---|---|---|---|
| QA-01 | Run Gitleaks | Scan repository for exposed secrets | Pass |
| QA-02 | Run Trivy | Identify Kubernetes security issues | Pass |
| QA-03 | Run kube-score | Identify configuration weaknesses | Pass |
| QA-04 | Run Checkov | Produce infrastructure security findings | Pass |
| QA-05 | Verify evidence files | All baseline reports are saved | Pass |
| QA-06 | Verify CI checks | Required GitHub checks pass | Pass |

## Results

- Gitleaks scanned 66 commits and found no leaks.
- Trivy identified security configuration issues.
- kube-score identified missing security settings.
- Checkov reported 58 passed and 31 failed checks.
- GitHub PR #23 passed its required checks.

Note: Pass means the test was executed and produced
the expected report, not that the system is free of
security vulnerabilities.
