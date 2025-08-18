# JARVIS – Étape 1 : Mise en place du projet

Ce dépôt contient le **squelette initial** et les **outils de base** pour démarrer proprement le MVP de JARVIS, en cohérence avec le cahier des charges.

> Date d'initialisation : 2025-08-18

## Objectifs Étape 1
1. Créer une structure de dépôt claire (monorepo) prête pour iOS/macOS + backend + RAG + infra.
2. Mettre en place l'environnement développeur reproductible (Mac + Linux).
3. Normaliser le code : formatage, lint, hooks, conventions de commit (Conventional Commits).
4. Gérer les secrets proprement (templates `.env`, recommandation sops/1Password, `direnv`).
5. Outillage CI minimal (lint + build sec).
6. Démarrer la doc (architecture, sécurité, privacy) et les templates (issues/PR).

## Pré-requis
- Git ≥ 2.40
- macOS (Xcode pour iOS/macOS) et/ou Linux
- Python ≥ 3.11 + `pipx` (ou `uv`)  
- Node.js ≥ 20 + `pnpm`  
- Docker Desktop (ou Docker Engine)  
- `direnv` (fortement conseillé)
- `pre-commit` (installé globalement via `pipx install pre-commit`)
- Optionnel sécurité : `sops` + `age` ou `1Password CLI` (`op`)

## Démarrage rapide

```bash
# 0) cloner le dépôt et entrer dans le dossier
git clone <YOUR_REPO_URL>.git jarvis
cd jarvis

# 1) exécuter le bootstrap (non destructif)
bash scripts/bootstrap_jarvis.sh

# 2) activer les hooks
pre-commit install

# 3) ouvrir la doc locale
open docs/ROADMAP_STEP1.md  # macOS
xdg-open docs/ROADMAP_STEP1.md  # Linux
```

## Conventions
- **Branches** : `main` (stable), `feat/*`, `fix/*`, `chore/*`
- **Commits** : Conventional Commits (`feat:`, `fix:`, `docs:`, `refactor:`, `chore:`…)
- **PR** : petite portée, description claire, check-list sécurité/UX.
- **ADR** : décisions d’architecture tracées dans `docs/DECISIONS/`.

## Sécurité & données (MVP)
- Données utilisateur **minimisées** par défaut, pas de PII inutile.
- Chiffrement au repos pour secrets, `.env` non commit, secrets hors build CI.
- Journalisation sobre (pas de données sensibles en logs).
- RAG : sources versionnées, provenance tracée, possibilité de purge.

Voir `docs/SECURITY_BASELINE.md` et `docs/PRIVACY_BASELINE.md`.

---

**Source de vérité :** `docs/SOW/Cahier_des_charges_JARVIS_MVP_complet.pdf`
