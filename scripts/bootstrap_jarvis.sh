#!/usr/bin/env bash
set -euo pipefail

echo ">>> Bootstrapping JARVIS Step 1…"

ROOT_DIR="${1:-.}"
cd "$ROOT_DIR"

# Create basic tree (idempotent)
mkdir -p apps/ios apps/macos backend rag infra docs/DECISIONS .github/ISSUE_TEMPLATE scripts

# Example env template
if [ ! -f ".env.example" ]; then
  cat > .env.example <<'EOF'
# === Core ===
APP_ENV=development
LOG_LEVEL=info
# === Backend ===
API_PORT=8080
# === RAG ===
INDEX_PATH=./rag/index
# === iOS/macOS ===
BUNDLE_ID=com.example.jarvis
# === Secrets (NE PAS COMMIT) ===
OPENAI_API_KEY=
ANTHROPIC_API_KEY=
VECTOR_DB_URL=
EOF
fi

# direnv template
if [ ! -f ".envrc" ]; then
  cat > .envrc <<'EOF'
dotenv_if_exists .env
layout python python3
EOF
fi

# Git hooks via pre-commit (if installed)
if command -v pre-commit >/dev/null 2>&1; then
  pre-commit install || true
fi

# Node workspace placeholder
if [ ! -f "package.json" ]; then
  cat > package.json <<'EOF'
{
  "name": "jarvis",
  "private": true,
  "workspaces": [
    "apps/*"
  ],
  "devDependencies": {
  }
}
EOF
fi

echo ">>> Done. Next: read docs/ROADMAP_STEP1.md and open an ADR."
