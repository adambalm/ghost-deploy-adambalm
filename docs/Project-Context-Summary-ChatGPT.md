# 🧠 Project Context Summary for ChatGPT

This repository hosts a demo Ghost CMS deployment and an experimental pipeline that ingests a Substack RSS feed, optionally transforms it with OpenAI, and posts drafts via the Ghost Admin API. Key files and statuses are listed below.

## RSS → OpenAI → Ghost Pipeline Files

- `rss-to-ghost.js` – Node script parsing a Substack feed and creating draft posts. It requires several environment variables to connect to the CMS. OpenAI calls are currently skipped, so it sends the raw HTML content directly to Ghost.
- `app.py` – Simple Flask proxy exposing the Substack RSS feed used by `rss-to-ghost.js`.
- `get-authors.js` – Utility script that lists authors via the Admin API.
- `.env.template` – Sample environment file listing the required variables.

## Observations
- The Node script defines a feed URL constant and exits if the required environment variables are missing.
- OpenAI summarization is commented out in `rss-to-ghost.js`:
  ```javascript
  // 🛑 Skip OpenAI for now — send raw HTML directly
  const html = rawContent;
  ```

## Inconsistencies & Missing Items

- The documentation references a different admin API key name than the code.
- GitHub Actions rely on several secret variables that are not stored in the repository.
- `rss-to-ghost.js` currently posts unaltered HTML and does not call OpenAI despite requiring an API key.

The pipeline components appear present but partially inactive. The n8n workflows are stored as JSON exports and not automatically run. GitHub Actions provide manual triggers but no scheduled automation.
