# ADR 0001 – Structure monorepo et composants

Date: 2025-08-18
Status: Proposed

## Contexte

On démarre un projet avec app macOS/iOS, backend local et RAG.

## Décision

On utilise un monorepo avec les dossiers apps/, backend/, rag/, infra/, docs/.

## Conséquences

- visibilité globale, + outils partagés ; − un peu plus de couplage.
