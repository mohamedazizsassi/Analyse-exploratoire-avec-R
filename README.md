
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

## Reproductibilité

### Prérequis

- R (recommandé : R 4.x)
- Quarto installé : https://quarto.org/

### Packages R utilisés

Le document charge notamment : `tidyverse`, `knitr`, `corrplot` 

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

