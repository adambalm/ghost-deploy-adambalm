# Ghost CMS Demo Deployment – Ghost in the Machine

This repository contains a customized Ghost theme and deployment setup used to demonstrate CMS workflows. It also implements a content automation pipeline using n8n, OpenAI, and GitHub.

## Purpose

This project demonstrates:

- Rapid configuration and customization of a Ghost CMS theme  
- Version-controlled deployment to a live Render instance  
- Integration of lightweight analytics and content-driven navigation  
- A developer-friendly publishing pipeline  
- Fluent orchestration of CMS, automation, and AI systems

## Architecture

- Ghost CMS deployed via Render
- GitHub – source of truth for theme files and routing config  
- n8n (cloud-hosted) – orchestration layer for inbound content and logic  
- OpenAI – summarization and contextual transformation layer (in development)  
- Plausible Analytics – integrated for privacy-respecting metrics  
- Serper.dev – reserved for future use in search-aware prompting and source enrichment

## Theme

The theme is a lightly modified fork of Ghost’s Dawn theme, with changes focused on:

- External link handling and improved metadata  
- Analytics injection (Plausible, with domain-specific logic)  
- Routing and homepage customization via `routes.yaml`  
- Git-backed development via `entrypoint.sh`

## Deployment Workflow

- Theme and routing files are versioned in this repository  
- Pushes to the `main` branch trigger Render builds when theme or configuration files are updated  
- Render applies the updated theme automatically during deployment
- Environment variables configure the Ghost instance dynamically

=======

### Required Environment Variables

The container expects the following variables at runtime:

- `PORT` – network port exposed by Ghost
- `MAIL__SMTP__AUTH__PASS` – SMTP password for outbound mail
- `URL` – canonical site URL used in `config.production.json`

## Live Instance

https://adambalm.io

## Persona Activation and Development Constraints

This repository operates under persistent protocols to ensure clarity, cost control, and architectural discipline.

- ScrumMaster persona is activated via `scrum`, `scrummaster`, or close variants. It enforces all project constraints and provides ongoing guidance in agile methodology.  
- Black Flag protocol is activated explicitly or automatically when output risks speculative reasoning or satisfaction bias. It prioritizes epistemological hygiene.  
- Red Team mode simulates adversarial testing of ideas, systems, and architecture to expose weak points.

Operating principles include:

- Mise-en-place: Tasks begin only after confirming all credentials, tokens, and access are in place.  
- Cost awareness: Active tracking of Render, OpenAI, GitHub Actions, and n8n usage. No polling, triggers, or API calls that risk overage.  
- No PII: No personally identifiable information is ever to be stored, committed, or displayed. This constraint applies across all personae unless explicitly overridden.

## Current Status

- Render-hosted Ghost CMS is live and thematically customized  
- Webhook-based n8n flow has been verified via manual POST  
- Webhook remains unauthenticated  
- OpenAI logic not yet connected  
- GitHub Action for scheduled RSS fetch (to replace blocked direct fetch) not yet implemented

## Next Steps

- Configure authentication for n8n webhook  
- Wire OpenAI for summarization and persona-based analysis  
- Create a GitHub Action to fetch Substack posts and POST to n8n  
- Add citation handling and excerpt logic for source attribution  
- Initiate `critical-project-prompts.md` as a canonical prompt reference for this and future repos  
- Expand scope of integration with Serper.dev for search context and source visibility enhancements
- Change ridiculous author photo


### Epistemelogical Controls

The underlying cognitive limits and system assumptions imposed on LLMs assisting this project:

[`black-flag.md`](https://github.com/adambalm/ghost-deploy-adambalm/blob/main/prompts/black-flag.md)


## License

MIT (inherited from original theme)
