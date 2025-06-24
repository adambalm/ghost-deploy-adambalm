# Project Structure – ghost-deploy-adambalm

This repository contains the Docker-based deployment setup for a self-hosted Ghost CMS instance. It works in tandem with the custom theme stored in [ghost-theme-adambalm](https://github.com/adambalm/ghost-theme-adambalm).

---

## ?? Key Components

### `Dockerfile`
- A minimal image based on the official Ghost 5.x release.
- Deploys cleanly to Render.com.
- Used for containerized, production-ready deployment.

---

## ?? Folder Layout

Currently minimal, but should be expanded as needed:

```
ghost-deploy-adambalm/
+-- Dockerfile
+-- STRUCTURE.md
+-- DEPLOYMENT.md
+-- (future: env config, CLI setup, optional theme submodule)
```

---

## ?? External Dependencies

- **Theme**:  
  Hosted separately at: [ghost-theme-adambalm](https://github.com/adambalm/ghost-theme-adambalm)  
  You must upload a ZIP export of this theme manually to the Ghost Admin interface or automate this with the Ghost CLI if desired.

- **routes.yaml**:  
  Included inside the theme repo. Uploaded via Ghost Admin under `Labs > Routes`.

---

## ?? To Be Documented Later

- SMTP/email config for subscriptions  
- Environment variables (`config.production.json`)  
- Optional: theme submodule integration for CI/CD
