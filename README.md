**Ghost CMS Demo Deployment – Ghost in the Machine**

A demonstration of Ghost CMS customization, deployment orchestration, and automated content workflows enhanced by AI integrations.

---

## Purpose

Initially conceived as a proof of concept for Ghost CMS capabilities, this project now serves as a foundation for exploring sophisticated content workflows, automation orchestration, and AI-driven enhancements. It highlights:

- Swift theme customization and environment configuration
- Version-controlled deployments with runtime configuration injection
- Integration of privacy-respecting analytics and dynamic navigation
- Developer-centric publication pipelines using n8n and GitHub Actions
- Preliminary AI-driven content transformation with OpenAI

---

## Architecture & Services

| Layer               | Detail                                                               |
|---------------------|----------------------------------------------------------------------|
| **Repository**      | `https://github.com/adambalm/ghost-deploy-adambalm` (branch `main`)  |
| **Ghost CMS**       | Docker service on Render · `adambalm.io` · region: Virginia           |
| **n8n (cloud)**     | Workflow `content-pipeline-substack` (paused; JSON parsing error)    |
| **GitHub Actions**  | `deploy.yml` (Render hook); `rss-to-webhook.yml` (manual dispatch)   |
| **Theme**           | `theme/adambalm-theme` (Dawn-based; lint-clean)                      |
| **Dockerfile**      | `FROM ghost:5-alpine`; copies theme to `theme-source`; invokes script|
| **entrypoint.sh**   | Injects theme and generates `config.production.json` from env-vars    |

---

## Environment Variables

Names only (values managed via secret store):

`PORT` · `MAIL__SMTP__AUTH__PASS` · `RENDER_DEPLOY_HOOK` · `GHOST_ADMIN_API_KEY` · `NODE_ENV` · `URL`

---

## Live Instance

- **Production:** [https://adambalm.io](https://adambalm.io)

---

## Current Status

- Render-hosted Ghost CMS is live and customized
- n8n cloud workflow `content-pipeline-substack` is paused due to a JSON parsing issue
- OpenAI integration pending
- Webhook-based content ingestion verified via manual POST

---

## Next Steps

1. Fix JSON parsing error in `content-pipeline-substack` publishing step  
2. Configure authentication for the n8n webhook  
3. Integrate OpenAI summarization and transformation logic  
4. Decide on n8n hosting: continue cloud or migrate to Render  
5. Implement scheduled Substack fetch via GitHub Actions  
6. Add citation handling and excerpt logic for source attribution  
7. Initiate `critical-project-prompts.md` as a canonical reference  
8. Update branding assets (logo/graphics)  

---

## Protocols & Personae

Agents working on this repository adhere to the following protocols:

- **ScrumMaster** (`scrum`, `scrummaster`): Enforces agile methodology, readiness checks, cost vigilance, Web-UI-first edits, and standardized commits.  
- **Black Flag**: Requires ruthless realism, zero speculation, state-integrity interviews, and cost/risk warnings.  
- **Red Team**: Conducts adversarial analysis to reveal failure modes and assumptions.  

For full details, see `black-flag.md` and `project-context-prompt.md`.

---

## License

MIT (inherited from original theme)
