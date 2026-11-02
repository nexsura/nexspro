# NEXSPRO — Feuille de route produit

**Document :** `docs/07-product-roadmap.md`  
**Statut :** référence du projet  
**Version :** 1.0  
**Dernière mise à jour :** 2 novembre 2026  
**Responsable :** propriétaire de NEXSPRO  
**Périmètre :** priorités de développement du produit, conditions de livraison et pistes d'évolution, sans échéances artificielles

## 1. Objet et portée

Ce document établit **la progression de NEXSPRO**, depuis son premier site officiel public jusqu'aux extensions qui pourraient être décidées ultérieurement. Il indique les priorités, les dépendances, les conditions de passage entre les étapes et le statut des possibilités futures.

Il complète les six autres références :

- [`01-project-definition.md`](01-project-definition.md) : identité et nature du projet ;
- [`02-product-vision.md`](02-product-vision.md) : ambition et expérience recherchée ;
- [`03-functional-scope.md`](03-functional-scope.md) : **engagement fonctionnel et critères d'acceptation de la V1** ;
- [`04-system-architecture.md`](04-system-architecture.md) : architecture et état technique constatés ;
- [`05-engineering-standards.md`](05-engineering-standards.md) : règles de développement et de vérification ;
- [`06-technical-decisions.md`](06-technical-decisions.md) : décisions techniques, justifications et arbitrages ouverts.

La feuille de route **ne remplace pas** le périmètre fonctionnel, un registre de décisions, un tableau de tâches ou un rapport de tests. **La mention d'une fonctionnalité future n'autorise pas à la présenter comme existante ou promise.**

## 2. Principes et conventions de suivi

### 2.1 Principes durables

1. **Livrer la V1 avant d'anticiper l'écosystème final.** La priorité est le site officiel, essentiellement statique, avec ses contenus et une expérience fiable.
2. **Faire évoluer une seule application tant que cela reste adapté.** La vision de plateforme ne justifie ni microservices, ni applications séparées, ni services temps réel par défaut.
3. **Avancer par besoins vérifiés.** L'ajout d'une fonction repose sur son intérêt réel pour le visiteur ou pour la maintenance du site.
4. **Garder le projet soutenable en solo.** Évaluer le travail de construction, mais également la maintenance, la sécurité et l'exploitation.
5. **Ne pas confondre visibilité, adoption et rentabilité.** Aucune croissance d'audience, revenu ou évolution commerciale n'est garantie par la feuille de route.
6. **Préserver la propriété et l'identité NEXSPRO.** Le produit reste le site officiel et une plateforme propriétaire, non un logiciel générique à distribuer.

### 2.2 Statuts de référence

| Statut | Signification |
| --- | --- |
| **Décidé — V1** | Élément appartenant au périmètre de lancement défini dans `03-functional-scope.md`. |
| **À vérifier** | Élément prévu ou présent dans le code, mais dont le fonctionnement ou la complétude n'est pas attesté ici. |
| **À arbitrer** | Choix nécessaire pour une étape concrète, sans solution encore validée. |
| **Envisagé** | Orientation possible pour une évolution ultérieure ; non engagée. |
| **Idée** | Piste exploratoire sans nécessité ni horizon de réalisation établis. |
| **Livré** | Résultat vérifié sur la version concernée, avec preuves appropriées. |
| **Écarté / remplacé** | Piste abandonnée ou remplacée, avec justification conservée. |

**Important :** un fichier créé, une route déclarée, une dépendance installée ou une section écrite dans cette feuille de route **ne suffit pas** pour attribuer le statut « Livré ». Le statut d'une étape doit s'appuyer sur des tests, une inspection ou l'observation du produit concerné.

## 3. Horizons d'évolution

Les noms V1 à V4 décrivent la trajectoire envisagée, **pas quatre livraisons déjà décidées**.

| Horizon | Finalité | Engagement actuel | Calendrier |
| --- | --- | --- | --- |
| **V1 — Site officiel** | Présenter NEXSPRO, ses six univers, ses projets et ses contenus au travers d'un site public fiable. | **Décidé — V1**. | Aucune date fixée ici. |
| **V2 — Enrichissement interactif** | Faciliter l'actualisation des contenus et ajouter des interactions ciblées si elles apportent une valeur. | **Envisagé**, contenu non arrêté. | Non fixé. |
| **V3 — Dimension communautaire** | Permettre éventuellement des échanges et des profils liés à NEXSPRO. | **Envisagé sous conditions**, non obligatoire. | Non fixé. |
| **V4 — Écosystème étendu** | Relier davantage d'expériences, contenus, logiciels et services dans une expérience plus immersive. | **Vision de long terme**, non engagée. | Non fixé. |

Les horizons V2 à V4 **peuvent changer d'ordre, être regroupés, réduits ou ne jamais être réalisés**. Passer de V1 à V2 ne nécessite pas de réécrire l'application ou de changer son architecture sans raison.

## 4. Feuille de route de la V1 — seul horizon engagé

**Objectif :** publier le site officiel public NEXSPRO avec les quinze pages et les qualités communes définies par `03-functional-scope.md`.

La V1 est un **objectif fonctionnel décidé**, mais sa complétude actuelle n'est **pas certifiée** par ce document. Les routes déclarées dans le dépôt ne prouvent pas que les pages sont finalisées ni accessibles dans un déploiement public.

### 4.1 Priorité A — Contenu et navigation

- Vérifier les quinze pages prévues sous **Home**, **Studio**, **Streaming**, **Gaming**, **Library** et **Connect** (voir la liste exacte et les URL dans `03-functional-scope.md`).
- Donner à chaque page un titre, une intention claire et un contenu honnête : créations réelles, annonces confirmées, ressources disponibles ou indication explicite lorsque le contenu n'existe pas encore.
- Vérifier les liens internes et les destinations externes, notamment vers les comptes et contenus officiels réellement utilisés.
- Harmoniser la navigation, les titres et l'identité visuelle à l'échelle du site.

**Résultat attendu :** toutes les pages du périmètre sont compréhensibles et permettent d'explorer NEXSPRO sans fausse promesse.

### 4.2 Priorité B — Expérience et présentation

- Contrôler les parcours sur mobile, tablette et ordinateur.
- Vérifier navigation clavier, focus, structure sémantique, contrastes, alternatives des images et préférences de réduction du mouvement lorsqu'il y a des animations.
- Vérifier les titres et métadonnées pertinents, le chargement des ressources et l'absence d'éléments visuels bloquants.
- Conserver une identité technologique et futuriste **sans faire dépendre la compréhension du site d'effets immersifs complexes**.

**Résultat attendu :** une expérience cohérente, accessible et utilisable sur les supports visés.

### 4.3 Priorité C — Vérifications techniques et sécurité

- Examiner le rendu effectif des routes, les erreurs applicatives et les régressions possibles.
- Exécuter les tests et contrôles pertinents selon les précautions de `05-engineering-standards.md` : RSpec, qualité du code, dépendances et analyses de sécurité.
- Vérifier l'absence de secrets exposés, les dépendances réellement nécessaires et les configurations de déploiement.
- Clarifier le rôle des composants existants dont l'utilité V1 reste ouverte, sans suppression préventive non étudiée.

**Résultat attendu :** une version candidate vérifiée, dont les défauts bloquants identifiés sont traités.

### 4.4 Priorité D — Préparation de publication

- **Arbitrer** le mode d'hébergement et les moyens minimaux d'exploitation avant la mise en ligne ; aucun prestataire n'est imposé par cette feuille de route.
- Préparer HTTPS, configuration de production, sauvegardes si des données doivent être conservées, procédure de retour arrière et contrôle après déploiement selon les besoins réels.
- Vérifier les informations légales, la confidentialité et les éventuels services tiers réellement utilisés.
- Publier uniquement après satisfaction des critères d'acceptation applicables et vérification du produit dans son environnement cible.

**Résultat attendu :** un lancement maîtrisé, sans présenter comme « en production » ce qui ne l'est pas.

### 4.5 Ordre pratique et chevauchement

Les priorités **A → B → C → D** donnent un ordre de travail par défaut, **pas une chaîne de phases rigides**. La sécurité, l'accessibilité et les tests doivent aussi accompagner les modifications dès leur réalisation. Les arbitrages nécessaires au lancement, comme l'hébergement, peuvent être préparés en parallèle.

La réalisation de chaque priorité reste à établir par vérification : **aucun pourcentage d'avancement ni aucune date de livraison n'est inventé ici**.

## 5. Décision de lancement de la V1

La décision de publier repose exclusivement sur les critères `V1-01` à `V1-09` de [`03-functional-scope.md`](03-functional-scope.md) :

| Critères | Domaine à vérifier |
| --- | --- |
| `V1-01` à `V1-03` | Pages, navigation et exactitude des contenus. |
| `V1-04` à `V1-05` | Responsive et accessibilité. |
| `V1-06` | Rendu applicatif et contrôles techniques pertinents. |
| `V1-07` | Sécurité, confidentialité et obligations applicables. |
| `V1-08` | Identité, informations essentielles et référencement. |
| `V1-09` | Exploitation, mise en ligne et retour arrière. |

**Statut au 2 novembre 2026 : non attesté dans ce document.** Aucune case n'est considérée comme réussie sans preuve. Pour attribuer le statut « Livré » à la V1, le propriétaire constate le résultat et conserve les éléments de vérification utiles (commit, tests, URL et date de contrôle, selon les cas).

## 6. V2 — Enrichissement interactif (envisagé)

**Finalité possible :** rendre les contenus et certaines interactions plus utiles lorsque la maintenance manuelle ou les besoins des visiteurs le justifient.

Exemples **non décidés** :

- publication ou mise à jour plus fréquente des réalisations, actualités, guides ou annonces ;
- gestion éditoriale légère, uniquement si modifier le code devient un obstacle réel ;
- recherche, filtrage ou parcours de découverte si la quantité de contenus le justifie ;
- intégrations ciblées avec des services existants, sans recréer une plateforme de streaming ou un réseau social.

**Conditions d'étude :** besoin observable, solution minimale identifiée, coût de maintenance acceptable, accessibilité préservée et risques techniques maîtrisés. Un besoin peut être satisfait en conservant des pages statiques : l'enrichissement interactif n'est pas une obligation.

## 7. V3 — Dimension communautaire (envisagée sous conditions)

**Finalité possible :** favoriser des échanges entre les publics de NEXSPRO, si une communauté réelle a besoin de fonctionnalités internes au site.

Exemples **non décidés** : comptes, profils, interactions entre membres, espaces d'échange ou participation à des activités collectives.

**Conditions préalables :** démontrer un usage que les réseaux et plateformes externes ne couvrent pas suffisamment, puis étudier **authentification, autorisations, confidentialité, protection des données, modération, lutte contre les abus, sécurité, exploitation et coûts**.

Le simple souhait de développer une communauté **ne déclenche pas automatiquement** la création de comptes ou de fonctionnalités sociales. Il est possible de rester durablement sur des interactions hébergées ailleurs.

## 8. V4 — Écosystème numérique étendu (vision)

**Finalité possible :** connecter davantage les univers NEXSPRO au sein d'une expérience numérique unifiée et progressivement immersive.

Exemples **exploratoires** :

- démonstrations et services logiciels plus intégrés ;
- contenus pédagogiques structurés, éventuellement formations payantes ;
- événements et compétitions liés au gaming, voire un projet de jeu ;
- boutique, prestations ou espaces clients, si un modèle économique est choisi ;
- interactions et expériences visuelles plus immersives ;
- fonctionnalités d'intelligence artificielle si un cas d'usage apporte une valeur démontrable.

**Aucune** de ces idées ne constitue un engagement de produit, une obligation architecturale ou une promesse commerciale. Elles doivent être cadrées séparément avant toute réalisation, avec leurs exigences de sécurité, de contenu, de droits, de données et d'exploitation.

L'expression *Immersive Digital Ecosystem Platform* demeure une **direction de conception**, pas une obligation de 3D, d'IA, de temps réel ou de microservices.

## 9. Comment promouvoir une idée en fonctionnalité décidée

Une piste V2–V4 ne devient un travail engagé qu'après un arbitrage explicite du propriétaire :

1. **Formuler le besoin** : pour qui, dans quel univers, et quel problème concret résoudre ?
2. **Comparer les solutions** : contenu statique, lien externe, amélioration simple du site ou nouvelle fonction applicative.
3. **Mesurer l'effort et les risques** : maintenance en solo, sécurité, accessibilité, performance, données personnelles, dépendances et coûts éventuels.
4. **Définir un résultat vérifiable** : fonctionnement attendu, limites et conditions d'acceptation, sans inventer de cible chiffrée.
5. **Décider du périmètre et du moment** : lancer, reporter, simplifier ou écarter la proposition. Un numéro de version n'est attribué qu'au besoin.
6. **Documenter les conséquences** : mettre à jour la feuille de route, `03` si le périmètre de V1 change, `04` si l'architecture change et `06` en cas de décision technique structurante.
7. **Vérifier après réalisation** : ne marquer « Livré » qu'après inspection ou exécution des contrôles pertinents.

L'absence de besoin confirmé est une raison suffisante pour **ne pas construire** la fonctionnalité.

## 10. Suivi léger pour un développement individuel

La feuille de route conserve les **orientations durables** ; les tâches quotidiennes, tickets ou corrections mineures peuvent rester dans GitHub Issues ou dans un suivi personnel, sans modifier ce document à chaque commit.

Pour chaque initiative majeure effectivement décidée, enregistrer au minimum :

| Champ | Utilité |
| --- | --- |
| **Intitulé / univers** | Identifier clairement la modification. |
| **Statut** | Décidé, à vérifier, en cours, livré, reporté ou écarté. |
| **Besoin et raison** | Justifier sa valeur pour NEXSPRO. |
| **Dépendances / risques** | Identifier ce qui pourrait bloquer ou rendre l'initiative coûteuse. |
| **Condition d'acceptation** | Expliquer comment confirmer le résultat. |
| **Référence** | Lien vers décision, issue, commit ou résultat de test, lorsqu'ils existent. |

Le statut **« En cours »** désigne un travail réellement commencé, pas une intention de commencer. Aucun pourcentage d'avancement n'est requis sans méthode de mesure fiable.

## 11. Règles de cohérence, de révision et de vérité

- **Référence stable et évolutive :** ce document est la feuille de route officielle V1.0 ; il peut évoluer sur décision du propriétaire, mais n'est pas un brouillon perpétuel.
- **Une seule source de vérité par sujet :** `01` pour l'identité ; `02` pour la vision ; `03` pour le périmètre V1 ; `04` pour l'architecture observée ; `05` pour les standards ; `06` pour les décisions techniques ; `07` pour les horizons et les priorités.
- **Aucun calendrier arbitraire :** les échéances, budgets, objectifs d'audience et revenus ne sont ajoutés que lorsqu'ils sont effectivement décidés.
- **Pas de réécriture de l'histoire :** lorsqu'une initiative est écartée ou remplacée, conserver une trace de l'arbitrage important ; mettre à jour les références concernées.
- **Aucune affirmation d'implémentation sans preuve :** le dépôt public, les échanges de cadrage et la rédaction de ces documents ne prouvent ni le déploiement, ni l'achèvement, ni la réussite des tests.
- **Modifications techniques contrôlées :** une idée acceptée n'autorise pas automatiquement l'ajout d'une dépendance, une migration, la suppression de fichiers ou une mise en production ; ces opérations nécessitent leur propre décision et vérification.

**Sources de cadrage :** décisions du propriétaire réaffirmées le 2 novembre 2026 et documents `01` à `06` du présent dossier documentaire. **Limite :** aucun audit complet du dernier commit local, test d'intégration ni contrôle du site déployé n'a été réalisé pour établir cette feuille de route ; l'état de réalisation reste à contrôler séparément.

**Historique documentaire**

| Version | Date | Changement |
| --- | --- | --- |
| 1.0 | 2026-11-02 | Établissement de la feuille de route de référence : V1 engagée, horizons V2–V4 conditionnels, priorités et règles de décision. |
