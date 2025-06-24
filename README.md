# ghost-deploy-adambalm

This repository contains the **Docker-based deployment setup** for a self-hosted Ghost CMS instance, created as part of a rapid job application demo for the Ghost CMS Administrator position at Sticker Mule.

👉 **Live site:** [ghost-deploy-adambalm.onrender.com](https://ghost-deploy-adambalm.onrender.com)  
👉 **Related theme repo:** [ghost-theme-adambalm](https://github.com/adambalm/ghost-theme-adambalm)

---

## 🎯 Purpose

This repo powers the **deployed Ghost CMS instance** hosted via Render. It is part of a two-instance strategy:

- [adambalm.ghost.io](https://adambalm.ghost.io) (Ghost(Pro)): Set up first so a resume could be submitted early in the hiring cycle.
- [ghost-deploy-adambalm.onrender.com](https://ghost-deploy-adambalm.onrender.com): A self-hosted Docker-based deployment to demonstrate likely Sticker Mule infrastructure.

🧠 The two sites are temporarily running in parallel to ensure zero downtime and continued iteration. Once both are fully synchronized and polished, we may redirect from Ghost(Pro) to Render.

---

## 🔧 What’s Included

### `Dockerfile`
- Minimal container image based on official Ghost (v5.x)
- Ready for use with [Render.com](https://render.com)
- Persists content using attached SSD disk

### Deployment Stack
- Ghost CMS (headless-ready)
- Docker
- Render deployment
- GitHub-based version control

---

## 🚧 Setup Considerations

You must manually:
- Upload the theme ZIP from the [theme repo](https://github.com/adambalm/ghost-theme-adambalm) via the Ghost Admin panel
- Import `routes.yaml` through `Labs > Routes`

Future iterations may automate this with:
- GitHub Actions
- Admin API
- Ghost CLI

---

## ⚠️ Notes

- This repository is being updated rapidly as part of a time-sensitive application process. It is actively evolving.
- You are welcome to inspect the commit history to verify hands-on experience with Git-based deployment and Ghost CMS configuration.

