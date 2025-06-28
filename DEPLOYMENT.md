# Deployment Overview

This project uses Ghost CMS deployed on two instances to simulate a professional staging/production architecture:

- **Ghost(Pro)** – functions as the **staging** environment  
- **Render-hosted Ghost** – functions as the **production** environment

All theme development and content curation is handled in Ghost(Pro), and changes are manually pushed to production via a controlled export/import process. This allows for local iteration with live previewing before content or structural changes are reflected in production.

---

## Theme Deployment Workflow

- The theme is a customized fork of the official Ghost Dawn theme.  
- All theme code is version-controlled in the [`ghost-deploy-adambalm`](https://github.com/adambalm/ghost-deploy-adambalm) GitHub repository.  
- On push to `main`, Render auto-rebuilds the production instance with the latest theme.

The Render build uses a simple Docker container to deploy the Ghost CMS instance. The theme folder is injected at runtime via the repository structure.

---

## Content Management Process

At present, content is not automatically synchronized between environments.

- Changes to navigation, settings, and posts are made in Ghost(Pro).  
- When stable, a full export (`Settings → Labs → Export`) is generated.  
- That export is imported into the Render instance via **Migration Tools → Import**.

> ⚠️ This is a manual process. Ghost does not currently support selective syncing of content across instances.

---

## Next Steps

We plan to:
- Integrate the Ghost Admin API for navigation updates and content publishing  
- Trigger content deployment automatically from GitHub markdown or JSON  
- Enhance theme UX via conditional display logic (e.g., pinned posts by tag)

These improvements will align our deployment and authoring process more closely with enterprise workflows while remaining lean and portable.
"Trigger redeploy at $(date)" 
"Trigger redeploy at $(date)" 
