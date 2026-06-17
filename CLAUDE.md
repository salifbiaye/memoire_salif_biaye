# Mémoire I-SIB — Salif Biaye

Mémoire de fin de cycle (DIC, ESP/UCAD) rédigé en LaTeX. Sujet : conception d'un
système d'information bancaire intelligent (I-SIB), modules Relation Client et SGI.

## Objectif en cours : réduire le score « Détection IA » du rapport Compilatio

Le plagiat (similitudes) est à < 1 % : rien à corriger de ce côté. Le score de
13 % vient uniquement de la **détection IA**, concentrée sur les passages
surlignés en bleu dans le rapport. On reformule **uniquement ces zones bleues**.

## Règles de travail (validées avec l'auteur)

1. **On ne touche QUE les zones bleues** du rapport, rien d'autre.
2. **Toujours proposer la réécriture AVANT de l'écrire** dans le fichier, et
   attendre la validation. Jamais de fait accompli.
3. On avance **pas à pas**, une zone à la fois, dans l'ordre du document.
4. On **conserve** : le sens, les `\cite{}`, les figures, les tableaux, les
   labels, la structure des sections.

## Grille « est-ce que c'est humain ? » (à vérifier avant chaque proposition)

Un passage sonne « IA » quand il a ces marqueurs — à casser :
- **listes / parallélisme rigide** (puces qui commencent toutes par le même type
  de mot, tricolons « X, Y et Z » à répétition). → Préférer un **paragraphe
  fluide** quand c'est possible.
- **phrases de longueur égale**, même rythme mécanique
  (« D'abord… ensuite… enfin… »). → Varier la longueur, regrouper des idées.
- **tournures lisses et génériques** sans point de vue. → Ajouter un « nous
  avons », une justification, un choix assumé (« plutôt que de tout construire
  d'un coup… »).
- **listes de mots-clés** (ex. domaines d'activités, piles techniques) : peu
  d'intérêt à reformuler, ça force des tournures fautives. Soit on les passe en
  **paragraphe**, soit on les **laisse telles quelles**.

## Français — pièges à éviter

- Pas de « et » au milieu d'une énumération qu'on continue ensuite : le
  connecteur final (« et », « ou encore ») se met **uniquement** sur le dernier
  élément.
- « telles que … » sous-entend déjà le non-exhaustif → ne pas ajouter « etc. »
  derrière (doublon).
- Registre **académique et sobre** dans le corps du mémoire ; ton **personnel /
  chaleureux** uniquement dans les dédicaces.
- Vocabulaire financier validé : « titre (action ou obligation) » plutôt que
  « instrument financier » quand le terme est jugé trop abstrait.

## Avancement

- [x] Dédicaces (tous les paragraphes + noms ajoutés : beurdeuhs, trio, sekous…)
- [x] Résumé FR + Abstract EN (2ᵉ paragraphe)
- [x] Introduction générale (puce ch.3 + ligne conclusion)
- [x] Chapitre 1 : Contexte, Définitions, Objectifs spécifiques, Contraintes &
      risques, Méthodologie (liste → paragraphe)
- [x] Chapitre 1 : Domaines d'activités (liste → paragraphe)
- [x] Chapitre 2 : intro (zone 9), équipe SGI + point de convergence
- [x] Chapitre 2 : dernier paragraphe des Exigences non fonctionnelles
- [x] Chapitre 3 : Principes (liste entière → paragraphe, inclut les 3 bleues)
- [x] Chapitre 3 : phrase Module Manager / Backend Module Manager
- [x] Chapitre 3 : Couche métier
- [x] Conclusion générale : 2ᵉ paragraphe
- Chapitre 4 : AUCUNE zone bleue (rien à faire)

## ✅ TOUTES les zones bleues du rapport ont été reformulées.

Listes bleues converties en paragraphe : Méthodologie, Principes de conception,
Domaines d'activités, Objectifs spécifiques. Définitions laissées en liste
(glossaire normal). Couche métier = énumération inline dans une phrase.

Prochaine étape : recompiler le PDF et relancer une analyse Compilatio pour
mesurer la baisse du score « Détection IA ».
