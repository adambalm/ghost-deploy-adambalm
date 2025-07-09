# Project Structure – ghost-deploy-adambalm

This repository defines a Docker-based deployment system for a self-hosted Ghost CMS instance hosted on Render, with integrated theme injection, automated deployment via GitHub Actions, and an auxiliary n8n workflow for content ingestion.

---

## 🔧 Root-Level Files

| File                      | Purpose                                                                 |
|---------------------------|-------------------------------------------------------------------------|
| `Dockerfile`              | Builds the Ghost container image, injects theme, sets entrypoint       |
| `entrypoint.sh`           | Runtime script: copies theme, writes config, starts Ghost              |
| `config.sample.json`      | Canonical reference for environment-based config                        |
| `.dockerignore`           | Excludes files from Docker context                                     |
| `.gitignore`              | Excludes build artifacts and secrets                                   |
| `.gitattributes`          | Normalizes line endings and file treatment                             |
| `README.md`               | Project overview                                                        |
| `STRUCTURE.md`            | This file – repo layout and file roles                                 |
| `DEPLOYMENT.md`           | Notes on deployment and platform behavior                              |

---

## 📂 Directories

| Path                        | Purpose                                                                 |
|-----------------------------|-------------------------------------------------------------------------|
| `.github/workflows/`        | GitHub Actions: deploy to Render (`deploy.yml`) and manual RSS fetch   |
| `content/themes/adambalm-theme/` | Canonical theme injected at runtime                                 |
| `scripts/`                  | Utility scripts (e.g. `lint-theme.sh` for dev file scanning)           |
| `n8n/`                      | Workflow exports (e.g. `substack-dryrun.json`)                          |
| `prompts/`                  | Protocol-bound context prompts for GPT interfaces                      |
| `workflows/`                | Intermediate artifacts, logs, or ingest flows                          |
| `diagnostics/`              | Unverified or deprecated inspection output (to be reviewed)             |

---

## 📦 Notable Automation & Services

- **Render Deployment**:  
  - Triggered via `deploy.yml` on pushes to `main` that affect `content/themes/**`  
  - Uses Dockerfile → `entrypoint.sh` → dynamic Ghost runtime injection

- **Theme Injection Path**:  
  - Only `content/themes/adambalm-theme` is injected  
  - Former `theme/` path has been removed (see commit history)

- **n8n Integration**:  
  - Cloud-based; workflow `content-pipeline-substack` is paused  
  - Supports webhook-based ingestion, currently under revision

---

## 🧼 Cleanup Notes

The following files or directories have been removed or flagged as obsolete:
- `theme/adambalm-theme/` → deleted
- `config.production.json` → deleted, now runtime-only
- `lint-report.txt`, `repo-structure.txt`, `diagnostics/` → pending review

---

## 🛠️ To Be Documented Later

- Full CI/CD from theme submodule (optional)
- Ghost Admin API credential use
- Automated routing or env-var validation
