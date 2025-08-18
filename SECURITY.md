# Security

- Do not commit secrets. Use `.env` locally; prefer `sops` + `age` or 1Password CLI for team sharing.
- Restrict logs to non-sensitive metadata.
- Encrypt storage at rest where possible.
- Minimal data collection; default to opt-in features.
