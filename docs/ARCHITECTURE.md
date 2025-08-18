# Architecture (high-level)

## Composants
- **apps/ios, apps/macos** : clients SwiftUI
- **backend/** : API (Python) exposant les services (auth, inference proxy, RAG)
- **rag/** : ingestion des sources, index local, retriever
- **infra/** : IaC / déploiement (à préciser)
- **docs/** : documentation et décisions d’archi (ADR)

## Flux MVP (esquisse)
Client → Backend → (Provider LLM / Local LLM) → RAG → Réponse
