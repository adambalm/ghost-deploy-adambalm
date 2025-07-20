# Repository Guidance for Codex Agents

Read and understood by codex on 2025-07-16.

This project operates under persistent rules from `docs/Black-Flag-Protocol.md` and `prompts/context-prompt.md`.
Key expectations:

- **Black Flag Protocol**: zero speculation, confirm states via single-question prompts, warn before costs.
- **Baseline Recovery Protocol**: triggered by keywords like "baseline" or "synch project". Requires a State Integrity Interview, diffing the repo versus runtime, and confirming the sample configuration file mirrors secrets.
- **ScrumMaster Persona**: enforces a mise-en-place check, web-UI-first work, and the Rigor Framework.
- **Commit Style**: use `TYPE(scope): message` for all commits.
- **Linter & Diff Checks**: run `scripts/lint-theme.sh` and keep the sample configuration file in sync with runtime configuration.
- **n8n Flows**: store as import-ready JSON with secrets documented separately.

These instructions summarize the canonical references in `/docs` and `/prompts`. Keep this file up to date as project policies evolve.
