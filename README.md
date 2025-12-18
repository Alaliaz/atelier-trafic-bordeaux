# Atelier – Trafic rocade bordelaise & enrichissement tourisme

Ce dépôt contient le travail réalisé pour constituer un **jeu de données d’entraînement** (data lake local) en vue d’un **modèle prédictif de trafic** sur la rocade bordelaise, puis un enrichissement par scraping de données touristiques.

## Objectifs pédagogiques

### Atelier 1 — Sources d’un modèle prédictif de trafic
1. Identifier les facteurs influençant le trafic.
2. Trouver des sources gratuites (Open Data, etc.).
3. Ingestion : lecture des données → stockage en **Parquet** → nommage avec date/heure.

### Atelier 2 — Scraping tourisme
1. Définir un cadre légal/éthique (robots.txt, charge serveur, pas de contournement, etc.).
2. Structurer le projet (git, `.gitignore`, répertoires, `.gitkeep`).
3. Scraper une **liste** (ex : agenda) puis explorer les **liens détail**.
4. Historiser en Parquet avec un **nom unique**.
5. Avant historisation : remplacer `bordeaux-tourisme.com` par `tourisme.example` dans les URLs stockées.

---

## Structure du projet

Proposition d’organisation (à adapter si besoin) :

- `notebooks/` : notebooks d’exploration et exécution pas à pas
- `src/` : scripts Python d’ingestion (trafic + scraping)
- `data/` : données locales (non versionnées)
  - `data/raw/` : fichiers bruts (exports, téléchargements)
  - `data/parquet/` : sorties historisées en Parquet
- `scraping/` : répertoire de travail scraping (si besoin)
- `.gitignore` : exclut `.venv/`, `data/`, `*.parquet`, logs, etc.
- `.env` : variables locales (non versionné)
- `.env.example` : exemple versionné (valeurs non sensibles)

---

## Prérequis

- Python 3.10+ (recommandé)
- Un environnement virtuel (`venv`)
- Dépendances installées via `requirements.txt`

---

## Installation (Windows / PowerShell)

```bash
python -m venv .venv
.\.venv\Scripts\activate
pip install -r requirements.txt
