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

- **Ghost(Pro)** – used as a content staging environment
- **Render-hosted Ghost** – simulates a production deployment
- **GitHub** – source of truth for theme files and routing config
- **Plausible Analytics** – integrated for privacy-respecting metrics

## Theme

The theme is a lightly modified fork of Ghost’s Dawn theme, with changes focused on:

- External link handling and improved metadata
- Analytics injection (Plausible, with domain-specific logic)
- Routing and homepage customization via `routes.yaml`
- Git-backed development via custom `entrypoint.sh`

## Deployment Workflow

- Theme and routing files are versioned in this repository
- Pushes to `main` automatically trigger a rebuild on Render
- Render deploys the theme from this repo on each build
- Environment variables configure the Ghost instance dynamically

## Live Instances

- **Staging (Ghost(Pro))**: https://adambalm.ghost.io  
- **Production (Render)**: [https://adambalm.io](https://adambalm.io)

## Next Steps

The Render-hosted instance serves as a programmable surface for autonomous publishing workflows. Upcoming enhancements include:

- Integration of external inputs via the Ghost Admin API
- Tag-driven routing to support a structured prompt archive
- Markdown-based publishing automation from versioned files
- Change ridiculous author photo

## License

MIT (inherited from original theme)

