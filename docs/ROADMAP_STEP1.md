# Roadmap — Étape 1 (Semaine 0 → 1)

## Livrables
- Repo monorepo initialisé
- CI lint minimale opérationnelle
- Doc initiale (architecture, sécurité, privacy)
- Templates GitHub (issues/PR)
- ADR #0001 créée

## Check-list (à cocher)
- [ ] Créer le repo distant (GitHub/GitLab)
- [ ] Pousser ce squelette
- [ ] Exécuter `scripts/bootstrap_jarvis.sh`
- [ ] Installer `pre-commit` et activer les hooks
- [ ] Configurer protections de branche (`main`)
- [ ] Activer la CI (GitHub Actions)
- [ ] Remplir `.env` localement
- [ ] Choisir gestion des secrets (sops+age ou 1Password CLI)
- [ ] Rédiger ADR 0001 : Architecture monorepo & composants
- [ ] Lancer `docs/ARCHITECTURE.md` (high-level)
- [ ] Ouvrir issues initiales (voir ci-dessous)

## Issues initiales (copier-coller)
- **feat:** init backend skeleton (FastAPI/Flask/…) + healthcheck
- **feat:** init iOS app (SwiftUI) + écran de test
- **feat:** init macOS app (SwiftUI) + écran de test
- **feat:** init module RAG (ingestion + index local)
- **chore:** setup CI workflow lint (python + markdown + yaml + swiftlint)
- **docs:** compléter ARCHITECTURE.md (diagrammes + flux)
- **docs:** SECURITY_BASELINE.md (threat model MVP)
- **docs:** PRIVACY_BASELINE.md
