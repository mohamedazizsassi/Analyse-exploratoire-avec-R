
# Analyse exploratoire de la réussite scolaire (R / Quarto)

Projet d’**analyse exploratoire (EDA)** sur la performance d’élèves du secondaire, basé sur les données de **Cortez & Silva (2008)**.
L’objectif est de comparer la **note finale (G3)** entre deux disciplines : **Mathématiques** vs **Langue portugaise**, et d’explorer des associations descriptives avec des facteurs socio‑démographiques, familiaux et comportementaux.

## Contenu du dépôt

- **Analyse principale (Quarto)** : [qmd/student-performance-eda.qmd](qmd/student-performance-eda.qmd)
- **Données** :
	- [qmd/data/student-mat.csv](qmd/data/student-mat.csv) (Math)
	- [qmd/data/student-por.csv](qmd/data/student-por.csv) (Portuguese)
- **Site Quarto (bonus)** : sortie HTML générée dans `docs/` (pour GitHub Pages)
- **Bibliographie / style** : [bib.bib](bib.bib), [apa.csl](apa.csl)

## Problématique (résumé)

1) La distribution de **G3** diffère‑t‑elle entre Math et Portugais ?
2) Quels facteurs (ex. **absences**, **temps d’étude**, **échecs**, **éducation des parents**, **alcool**) semblent associés à la performance finale ?
3) Ces associations varient‑elles selon le **sexe** et/ou l’**école** ?

> Remarque : l’analyse reste **descriptive et exploratoire** (pas d’inférence causale, pas de ML).

## Méthodologie (EDA)

- Nettoyage / préparation des variables (facteurs, ordinales, variables dérivées)
- Visualisations (histogrammes, boxplots, lissages LOESS)
- Corrélations **Spearman** (descriptif)
- Comparaisons exploratoires entre groupes (avec indicateurs d’effet)
- **ACP** (analyse en composantes principales) sur variables numériques standardisées (exploration)

## Résultats clés (synthèse)

- **Échantillon** : 1 044 observations (Math : 395, Portugais : 649), âge médian 17 ans.
- **Performance (G3)** : moyenne 10.42 (Math) vs 11.91 (Portugais) ; médiane 11 vs 12.
- **Taux de réussite (G3 ≥ 10)** : 67.1% (Math) vs 84.6% (Portugais).
- **Écart Math vs Portugais** : environ −1.49 point de G3 (Cohen’s d ≈ −0.39 ; test de Wilcoxon p < 0.001, à interpréter comme exploratoire).
- **Associations descriptives avec G3 (Spearman)** : échecs passés `failures` (ρ ≈ −0.41), éducation parentale `parent_edu` (ρ ≈ +0.24), alcool `alcohol_index` (ρ ≈ −0.17), absences (ρ ≈ −0.11).

## Reproductibilité

### Prérequis

- R (recommandé : R 4.x)
- Quarto installé : https://quarto.org/

### Packages R utilisés

Le document charge notamment : `tidyverse`, `knitr`, `corrplot`, `scales`.

### Rendre l’analyse (HTML)

À la racine du projet :

```bash
quarto render qmd/student-performance-eda.qmd --to html
```

Le HTML est généré dans : `docs/qmd/student-performance-eda.html`.

### Rendre tout le site

```bash
quarto render
```

## GitHub Pages (bonus)

Si GitHub Pages est activé (branche `gh-pages` ou `main/docs` selon la configuration), le site est accessible ici :

- https://mohamedazizsassi.github.io/Analyse-exploratoire-avec-R/

## Référence du dataset

Cortez, P., & Silva, A. (2008). *Using Data Mining to Predict Secondary School Student Performance*. IJCSI.

## Licence

Voir le fichier [LICENSE](LICENSE).

