# Lab 11 - Initial Security Findings

## Trivy
- Baseline security scan completed.
- HIGH finding KSV-0118 identified.
- File: week-4/web-deployment.yaml
- Issue: Default security context may allow root privileges.

## Gitleaks
- 66 commits scanned.
- No secrets detected.
- Results saved in gitleaks-before.json.

## kube-score
- Kubernetes configuration scanned.
- Critical findings include:
  - Missing resource requests and limits.
  - Missing container security context.
  - Use of latest image tag.
  - Missing matching NetworkPolicy.

## Checkov
- Terraform/OpenTofu configuration scanned.
- Passed checks: 58
- Failed checks: 31
- Skipped checks: 0

## Next Steps
1. Review high-risk configuration findings.
2. Identify fixes that can be implemented safely.
3. Run security scans again after changes.
4. Document remaining risks and supporting evidence.
