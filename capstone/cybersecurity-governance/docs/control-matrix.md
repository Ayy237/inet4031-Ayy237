# Lab 11 - Initial Security Control Matrix

| ID | Security Control | Evidence | Status | Next Action |
|---|---|---|---|---|
| 1 | Secret scanning | gitleaks-before.json | Pass | Continue scanning |
| 2 | Container security context | trivy-before.txt | Fail | Restrict privileges |
| 3 | CPU resource limits | kube-score-before.txt | Fail | Set CPU limits |
| 4 | Memory resource limits | kube-score-before.txt | Fail | Set memory limits |
| 5 | Image tag security | kube-score-before.txt | Fail | Use fixed image tags |
| 6 | NetworkPolicy | kube-score-before.txt | Fail | Add NetworkPolicy |
| 7 | Infrastructure security | checkov-before.txt | Fail | Review failed checks |
| 8 | Security evidence collection | evidence directory | Pass | Automate collection |
