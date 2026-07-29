# 🧩 Incident Review (Postmortem)

## Incident Title

GitHub Actions Executed an Outdated Workflow Definition After Branch Migration

---

## Incident Information

| Field | Value |
|--------|--------|
| **Incident Date** | 2026-07-29 |
| **Severity** | Medium |
| **Status** | Resolved |
| **Category** | CI/CD Pipeline |
| **Affected System** | GitHub Actions Deployment Pipeline |
| **Repository** | Project Fortress |

---

# Incident Summary

During development of the Phase 2 CI/CD security enhancements for Project Fortress, the deployment workflow repeatedly executed an older version of `deploy-retail-store.yml` despite newer changes existing in the feature branch.

The deployment pipeline continued using an outdated workflow definition, causing newly implemented CI/CD improvements to be ignored during execution.

Although the workflow itself executed successfully, the incorrect workflow version prevented newly added deployment logic from being tested.

---

# Impact

- Development and testing of the deployment pipeline was blocked.
- Newly implemented CI/CD improvements were not executed.
- Workflow debugging became confusing because the repository contained newer code than the workflow being executed.
- Time was spent investigating what initially appeared to be a GitHub Actions caching issue.

No production infrastructure was affected.

---

# Environment

- GitHub Actions
- GitHub Repository
- Feature Branch:
  `feature/phase2-cicd-security`
- Main Branch
- Terraform
- AWS
- GitHub OIDC Authentication

---

# Symptoms

The GitHub Actions UI displayed:

```text
deploy-retail-store.yml @ 77e1504
```

while the latest workflow modifications existed in a newer commit on the feature branch.

Despite updating the workflow file, GitHub Actions continued executing the older version.

---

# Initial Hypotheses

Several possible causes were considered:

- GitHub Actions workflow cache
- Workflow dispatch configuration
- Incorrect workflow trigger
- GitHub Actions execution delay
- Branch synchronization issues

---

# Investigation

The investigation involved comparing workflow files between commits.

Commands used included:

```bash
git show 069caac:.github/workflows/deploy-retail-store.yml

git show 77e1504:.github/workflows/deploy-retail-store.yml
```

The workflow definitions were compared line by line.

The investigation confirmed that the feature branch contained the updated workflow while GitHub Actions continued executing the workflow stored in the commit that triggered the workflow run.

---

# Root Cause

GitHub Actions executes the workflow definition that exists in the commit associated with the triggering event.

The deployment workflow was still being triggered by commits originating from a branch containing the older workflow definition.

As a result, GitHub Actions correctly executed the workflow associated with that commit instead of the newer version available on the feature branch.

This behavior was expected platform behavior rather than a GitHub Actions defect.

---

# Resolution

The workflow trigger strategy was updated to support development on the feature branch.

During development the workflow was configured to trigger from:

```yaml
push:
  branches:
    - feature/phase2-cicd-security

workflow_dispatch:
```

Once testing was completed, the feature branch was merged into `main`, ensuring that future workflow executions referenced the latest workflow definition.

---

# Validation

The following validations confirmed the resolution:

- Updated workflow executed successfully.
- GitHub Actions referenced the correct workflow version.
- Newly implemented deployment logic executed successfully.
- Workflow changes became immediately visible in subsequent workflow runs.

---

# Lessons Learned

- GitHub Actions always executes the workflow contained within the triggering commit.
- Comparing workflow files between commits is an effective debugging technique.
- Feature branch workflow development should use dedicated workflow triggers.
- Understanding GitHub Actions execution context significantly reduces CI/CD debugging time.

---

# Preventive Actions

- Use `workflow_dispatch` during workflow development.
- Use branch-specific triggers when testing major workflow changes.
- Merge workflow changes into `main` only after validation.
- Document GitHub Actions execution behavior for future contributors.

---

# Outcome

The deployment pipeline successfully transitioned to the updated workflow architecture, allowing continued implementation of Project Fortress Phase 2 CI/CD security improvements.