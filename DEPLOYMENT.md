#  Deployment Guide – ghost-deploy-adambalm

This guide outlines how to deploy and maintain the self-hosted Ghost CMS instance on Render using this repository.

---

##  Overview

This repository contains the **deployment setup** for a self-hosted Ghost CMS instance using Docker, with the production theme stored separately at [ghost-theme-adambalm](https://github.com/adambalm/ghost-theme-adambalm).

This setup is intended to mirror or eventually **replace** the current [Ghost(Pro)](https://ghost.org/) instance at **[adambalm.ghost.io](https://adambalm.ghost.io)**.

---

## Render Deployment Instructions

###  One-Time Setup (already complete)
- Create a new **Web Service** on [Render.com](https://render.com/)
- Link it to this repo: `ghost-deploy-adambalm`
- Set **runtime** to **Docker**
- Expose port `2368`
- Use default `Dockerfile` unless otherwise configured

###  Manual Deploy
- From the Render dashboard, trigger **Manual Deploy**
- If Dockerfile is valid and theme is installed via Ghost Admin, site will deploy to:
  
  ```
  https://ghost-deploy-adambalm.onrender.com
  ```

---

##  Theme Installation

### Theme Source:
[ghost-theme-adambalm](https://github.com/adambalm/ghost-theme-adambalm)

### How to Install:
1. Clone the theme repo and zip it:
   ```bash
   git clone https://github.com/adambalm/ghost-theme-adambalm.git
   cd ghost-theme-adambalm
   zip -r dawn.zip .
   ```

2. Go to `/ghost/#/settings/design` on your Render-hosted instance.

3. Upload `dawn.zip`.

4. Activate the theme in the Ghost Admin UI.

---

##  Routing Configuration

1. In Ghost Admin, go to:  
   `Settings > Labs > Routes`

2. Upload `routes.yaml` from the theme repo

3. This enables pagination, tag filtering, and any custom structure defined in the theme.

---

##  Keeping Sites in Sync

Until cutover:
- **Ghost(Pro)**: Manually mirror changes to the Render site.
- **Render**: Treat as the canonical "dev + demo" environment.

### When to Cut Over
- Once the Render deployment replicates or exceeds Ghost(Pro) functionality and theme polish.

---

##  Future Improvements

- Automate theme deployment via Ghost CLI or Admin API
- Add SMTP cr
