# 🧠 Project Context Summary for ChatGPT

This repository hosts a demo Ghost CMS deployment and an experimental pipeline that ingests a Substack RSS feed, optionally transforms it with OpenAI, and posts drafts via the Ghost Admin API. Key files and statuses are listed below.

## RSS → OpenAI → Ghost Pipeline Files

- `rss-to-ghost.js` – Node script parsing a Substack feed and creating draft posts. It requires the env vars `OPENAI_API_KEY`, `GHOST_ADMIN_KEY`, and `GHOST_ADMIN_URL`. OpenAI calls are currently skipped, so it sends the raw HTML content directly to Ghost.
- `app.py` – Simple Flask proxy exposing the Substack RSS feed used by `rss-to-ghost.js`.
- `get-authors.js` – Utility script that lists authors via Ghost Admin API.
- `.env.template` – Sample environment file specifying `OPENAI_API_KEY`, `GHOST_ADMIN_KEY`, and `GHOST_ADMIN_URL`.
- `config.sample.json` – Example Ghost config referencing `MAIL__SMTP__AUTH__PASS`.

## Automation Workflows

- `.github/workflows/deploy.yml` – Triggers a Render deploy when theme files change.
- `.github/workflows/rss-to-ghost.yml` – Manual workflow that runs `rss-to-ghost.js` with secrets `OPENAI_API_KEY`, `GHOST_ADMIN_KEY`, and `GHOST_ADMIN_URL`.
- `.github/workflows/rss-to-webhook.yml` – Manual workflow that fetches the RSS feed in Python and posts entries to an n8n webhook.
- `n8n/substack-dryrun.json` and `workflows/content-pipeline-substack.json` – n8n flows for ingesting Substack content. Both are saved as JSON exports; the latter is marked `"active": false`.

## Observations

- The Node script defines the feed URL and env checks:
  ```javascript
  const FEED_URL = 'https://substack-feed-proxy.onrender.com/proxy';
  const { OPENAI_API_KEY, GHOST_ADMIN_KEY, GHOST_ADMIN_URL } = process.env;
  if (!OPENAI_API_KEY || !GHOST_ADMIN_KEY || !GHOST_ADMIN_URL) {
    console.error('Missing required environment variables.');
    process.exit(1);
  }
  ```
- OpenAI summarization is commented out in `rss-to-ghost.js`:
  ```javascript
  // 🛑 Skip OpenAI for now — send raw HTML directly
  const html = rawContent;
  ```
- `.env.template` contains placeholder keys only:
  ```
  OPENAI_API_KEY=
  GHOST_ADMIN_KEY=
  GHOST_ADMIN_URL=
  ```

## Inconsistencies & Missing Items

- `prompts/context-prompt.md` lists an env var `GHOST_ADMIN_API_KEY`, but the code and sample files use `GHOST_ADMIN_KEY`.
- No secrets are committed; GitHub Actions expect `OPENAI_API_KEY`, `GHOST_ADMIN_KEY`, `GHOST_ADMIN_URL`, and `RENDER_DEPLOY_HOOK` to be set as repository secrets.
- `rss-to-ghost.js` currently posts unaltered HTML and does not call OpenAI despite requiring its API key.

The pipeline components appear present but partially inactive. The n8n workflows are stored as JSON exports and not automatically run. GitHub Actions provide manual triggers but no scheduled automation.
