# ghost-deploy-adambalm

This repository contains a customized Ghost theme and deployment setup used to demonstrate CMS management workflows in a two-instance architecture.

## Purpose

The project was built to support a job application to Sticker Mule and to showcase:

- Rapid configuration and customization of a Ghost CMS theme
- Version-controlled deployment to a live Render instance
- Separation of staging (Ghost(Pro)) and production-like (Render) environments
- Integration of lightweight analytics and content-driven navigation
- A developer-friendly publishing pipeline

## Architecture

- **Ghost(Pro)** – used as a staging environment
- **Render-hosted Ghost instance** – simulates a production deployment
- **GitHub** – source of truth for theme files and routes
- **Plausible Analytics** – integrated for privacy-respecting site analytics

## Theme

The theme is a lightly modified fork of Ghost’s [Dawn theme](https://github.com/TryGhost/Dawn), with changes focused on:

- Usability improvements  (external links)
- Analytics integration (Plausible, with dynamic domain targeting)
- Semantic and navigation tweaks
- Routing customization via `routes.yaml`

## Deployment Workflow

- Theme and routing files are versioned in this repository.
- Pushes to `main` automatically trigger a rebuild on Render.
- Render is configured to deploy the theme from this repository on each build.

## Future Plans

- Enable navigation and content updates via Ghost Admin API
- Use tagging to support pinned posts and improved UX
- Automate publishing from GitHub using markdown or JSON post templates
- Configure DNS to point to adambalm.io for Render instance
- Change ridiculous author photo

## Live Instances

- **Staging (Ghost(Pro))**: [https://adambalm.ghost.io](https://adambalm.ghost.io)
- **Production (Render)**: [https://ghost-deploy-adambalm.onrender.com](https://ghost-deploy-adambalm.onrender.com)

## License

MIT (Inherited from original theme)

