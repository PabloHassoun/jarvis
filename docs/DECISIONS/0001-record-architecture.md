# ADR 0001 – Structure monorepo et composants
Date: 2025-08-18
Status: Proposed

## Contexte
Besoin d'un squelette clair pour apps iOS/macOS, backend, RAG, infra, docs.

## Décision
Adopter monorepo avec dossiers `apps/`, `backend/`, `rag/`, `infra/`, `docs/`.
Conventions de branches et de commits (Conventional Commits).
CI minimale (lint) puis tests à venir.

## Conséquences
+ Visibilité globale
+ Outillage CI partagé
- Couplage initial plus fort
