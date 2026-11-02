# NEXSPRO — Décisions techniques

**Document :** `docs/06-technical-decisions.md`  
**Statut :** registre de référence des décisions techniques  
**Version :** 1.0  
**Dernière mise à jour :** 2 novembre 2026  
**Responsable des décisions :** propriétaire de NEXSPRO  
**Périmètre :** arbitrages techniques structurants, motifs, compromis et conditions de réexamen

## 1. Objet du registre

Ce document explique **pourquoi NEXSPRO est construit selon certains choix techniques**, quelles solutions ne sont **pas retenues pour l'instant** et dans quelles circonstances les décisions pourront changer. Il sert de mémoire de conception pour un projet développé individuellement ; il n'impose ni comité d'architecture ni processus d'équipe.

Il complète, sans les remplacer :

- [`01-project-definition.md`](01-project-definition.md) — identité et nature du produit ;
- [`02-product-vision.md`](02-product-vision.md) — ambition et orientations produit ;
- [`03-functional-scope.md`](03-functional-scope.md) — engagement fonctionnel de la V1 ;
- [`04-system-architecture.md`](04-system-architecture.md) — **ce que montre le code** et son fonctionnement ;
- [`05-engineering-standards.md`](05-engineering-standards.md) — **comment développer et vérifier** ;
- `07-product-roadmap.md` — possibilités et priorités futures.

**Distinction fondamentale :** la présence d'une technologie dans `Gemfile`, dans Docker ou dans le dépôt **prouve sa déclaration ou sa configuration**, pas son utilité effective, son bon fonctionnement ni une décision de la conserver indéfiniment. Une justification d'ingénierie formulée ici ne doit pas être confondue avec une citation historique mot à mot du propriétaire.

## 2. Statuts et conventions

| Statut | Sens |
| --- | --- |
| **Retenue** | Décision actuellement applicable, établie à partir du cadrage confirmé ou d'un choix technique existant conservé comme référence. |
| **À trancher** | Question ouverte : aucun choix définitif n'est enregistré. |
| **Remplacée** | Ancienne décision conservée pour la traçabilité, avec référence à la nouvelle. |

Chaque décision possède un identifiant **`NXS-DEC-xxx` immuable**. Son titre, sa justification ou son statut peuvent évoluer ; l'identifiant n'est jamais réattribué. Une décision remplacée n'est pas effacée. La **date du présent registre** correspond à l'enregistrement documentaire des décisions, et ne prétend pas être leur date historique de première discussion.

**Sources de justification :**

- **Cadrage du propriétaire** : choix explicites réaffirmés pour NEXSPRO, notamment le 2 novembre 2026.
- **Dépôt observé** : configuration ou organisation visible dans les fichiers GitHub consultables ; état éventuellement mis en cache.
- **Raisonnement technique** : avantages et compromis analysés pour justifier ou réexaminer le choix ; ne prouve pas l'historique des discussions.

## 3. Synthèse des décisions retenues

| ID | Décision | Fondement principal |
| --- | --- | --- |
| `NXS-DEC-001` | Construire le site officiel propriétaire de NEXSPRO, non un logiciel générique distribuable | Cadrage du propriétaire |
| `NXS-DEC-002` | Limiter la V1 à un site public principalement statique | Cadrage du propriétaire |
| `NXS-DEC-003` | Conserver une application Rails unique, à responsabilités séparées | Cadrage et dépôt observé |
| `NXS-DEC-004` | Utiliser Ruby et Ruby on Rails comme socle applicatif | Cadrage et dépôt observé |
| `NXS-DEC-005` | Utiliser Phlex et le rendu HTML côté serveur pour les pages | Cadrage et dépôt observé |
| `NXS-DEC-006` | Utiliser Tailwind CSS et les assets Rails existants | Cadrage et dépôt observé |
| `NXS-DEC-007` | Conserver PostgreSQL comme base de référence, sans imposer de données dynamiques aux pages statiques | Cadrage et dépôt observé |
| `NXS-DEC-008` | Utiliser Docker/Compose pour l'environnement conteneurisé existant | Cadrage et dépôt observé |
| `NXS-DEC-009` | Utiliser RSpec et les contrôles de qualité/sécurité existants | Cadrage et dépôt observé |
| `NXS-DEC-010` | Privilégier une interface sans JavaScript applicatif inutile | Cadrage du propriétaire |
| `NXS-DEC-011` | Reporter les architectures et infrastructures avancées jusqu'à un besoin démontré | Cadrage du propriétaire |
| `NXS-DEC-012` | Maintenir le dépôt GitHub public tout en conservant un produit propriétaire | Cadrage et dépôt observé |

La mention **« retenue »** signifie que le choix guide les futurs changements ; elle **n'atteste pas** que chaque aspect est implémenté, testé ou déployé.

## 4. Fiches de décision

### NXS-DEC-001 — Produit propriétaire dédié à NEXSPRO

- **Statut :** Retenue.
- **Décision :** développer le produit NEXSPRO lui-même, comme site officiel de la marque dans l'écosystème Nexsura. Ne pas concevoir de fonctionnalités de distribution, d'installation chez des tiers, de personnalisation multiclient ou de framework réutilisable sans besoin explicite.
- **Justification :** éviter une architecture et une maintenance destinées à des utilisateurs de code qui ne sont pas le public cible du projet.
- **Alternative non retenue à ce stade :** template, starter kit, SaaS générique ou produit open source à distribuer.
- **Compromis :** certains éléments seront spécialisés pour NEXSPRO ; leur réutilisabilité externe n'est pas un objectif prioritaire.
- **Réexamen :** seulement si le propriétaire décide de distribuer un produit distinct ; une telle décision nécessiterait son propre cadrage et une analyse des droits.
- **Référence :** `01-project-definition.md`, sections 2, 6 et 7.

### NXS-DEC-002 — Première version principalement statique

- **Statut :** Retenue.
- **Décision :** livrer d'abord les pages publiques, leur contenu, la navigation et les exigences de qualité de la V1 ; ne pas rendre obligatoires les comptes, paiements, CMS complexe, uploads, diffusion vidéo native ou interactions communautaires internes.
- **Justification :** publier un site cohérent et maintenable avant de financer en temps et en risque des fonctionnalités sans usage démontré.
- **Alternative non retenue à ce stade :** construire immédiatement la plateforme interactive complète.
- **Compromis :** certains contenus demandent une mise à jour du code ; les visiteurs ne disposent pas encore de fonctions avancées.
- **Réexamen :** lorsqu'un besoin éditorial ou utilisateur précis et ses critères d'acceptation sont validés.
- **Référence :** `03-functional-scope.md`, sections 4, 6 et 8.

### NXS-DEC-003 — Application Rails unique

- **Statut :** Retenue.
- **Décision :** conserver un **monolithe Rails évolutif**, avec séparation logique entre routes, contrôleurs, pages, composants et éventuelle logique métier. « Modulaire » ne signifie **pas** plusieurs programmes ou packages autonomes.
- **Justification :** garder un système plus simple à comprendre, développer, tester et exploiter seul.
- **Alternative non retenue à ce stade :** microservices, frontend découplé, multiples backends ou moteurs Rails ajoutés par anticipation.
- **Compromis :** une application unique exige de maintenir des responsabilités claires ; une extraction ultérieure demanderait une analyse spécifique.
- **Réexamen :** lorsqu'un besoin réel d'isolation, de déploiement indépendant ou de contraintes techniques incompatibles avec l'application unique est démontré.
- **Preuves :** `config/routes.rb`, `app/controllers/`, `app/views/` ; description des flux dans `04-system-architecture.md`.

### NXS-DEC-004 — Ruby et Ruby on Rails comme socle

- **Statut :** Retenue.
- **Décision :** conserver Ruby et Rails comme langage et framework centraux du site.
- **Justification :** rester cohérent avec le code et l'environnement de travail existants plutôt que réécrire l'application sans bénéfice démontré.
- **Alternative non retenue à ce stade :** migration vers un autre framework ou langage pour des raisons de tendance.
- **Compromis :** les versions Ruby/Rails, gemmes et outils associés nécessitent une maintenance régulière ; les choix de versions exactes suivent les fichiers de dépendances, non ce registre.
- **Réexamen :** incompatibilité technique durable, exigence métier non couverte ou coût de maintenance objectivement défavorable.
- **Preuves :** `.ruby-version`, `Gemfile`, `Gemfile.lock` et `config/`.

### NXS-DEC-005 — HTML rendu côté serveur avec Phlex

- **Statut :** Retenue.
- **Décision :** utiliser Phlex pour les pages, layouts et composants, avec génération du HTML par Rails côté serveur.
- **Justification :** conserver une interface Ruby-first, des responsabilités claires et une logique de présentation homogène.
- **Alternative non retenue à ce stade :** imposer une application monopage JavaScript ou reconstruire toutes les vues dans une autre technologie.
- **Compromis :** la maintenance dépend des conventions et de la compatibilité de Phlex ; certaines interactions futures nécessiteront éventuellement du JavaScript.
- **Réexamen :** besoin fonctionnel concret non couvert raisonnablement par la solution actuelle, après examen des possibilités de Rails et Phlex.
- **Preuves :** `app/views/base.rb`, `app/views/layouts/`, `app/views/pages/`, `app/views/components/`, `Gemfile`.

### NXS-DEC-006 — Tailwind CSS et pipeline d'assets Rails

- **Statut :** Retenue.
- **Décision :** utiliser Tailwind CSS pour les styles et conserver le mécanisme d'assets Rails présent dans le projet, notamment Propshaft.
- **Justification :** bénéficier d'un style cohérent et d'une gestion des ressources déjà intégrée, sans empiler de systèmes CSS concurrents.
- **Alternative non retenue à ce stade :** nouvelle bibliothèque de composants ou second pipeline d'assets sans nécessité concrète.
- **Compromis :** les classes utilitaires peuvent devenir difficiles à maintenir si elles sont dupliquées ou incohérentes ; les changements visuels nécessitent une revue de l'accessibilité.
- **Réexamen :** limitation effective de la configuration actuelle ou besoin identifié qui ne peut être traité simplement.
- **Preuves :** `Gemfile`, `app/assets/tailwind/application.css` et configuration des assets.

### NXS-DEC-007 — PostgreSQL comme base de données de référence

- **Statut :** Retenue.
- **Décision :** conserver PostgreSQL comme technologie de persistance de l'application, sans déduire que les pages statiques doivent y stocker leur contenu.
- **Justification :** garder une base de référence déjà intégrée, utilisable lorsque des données applicatives deviennent réellement nécessaires.
- **Alternative non retenue à ce stade :** introduire une seconde base ou un stockage spécialisé sans besoin établi.
- **Compromis :** même peu utilisée, une base augmente la configuration et l'exploitation ; l'usage de plusieurs bases Rails ou de Solid doit être distingué de leur simple présence.
- **Réexamen :** audit des usages réels, évolution des besoins de données et choix du déploiement ; toute suppression ou migration nécessite une analyse de dépendances et de risques.
- **Preuves :** `Gemfile`, `config/database.yml`, `compose.yaml` ; usages métiers à vérifier dans le code et par exécution.

### NXS-DEC-008 — Docker et Docker Compose pour l'environnement existant

- **Statut :** Retenue.
- **Décision :** conserver les fichiers Docker et Compose utilisés pour construire et démarrer l'application dans l'environnement conteneurisé du projet.
- **Justification :** disposer d'un environnement de développement documentable et cohérent, notamment pour Rails et PostgreSQL.
- **Alternative non retenue à ce stade :** supprimer Docker ou imposer une plateforme cloud particulière avant de choisir une stratégie de déploiement.
- **Compromis :** consommation de ressources, gestion des volumes et vigilance sur les variables d'environnement ; la configuration de développement n'est pas automatiquement celle de production.
- **Réexamen :** changement démontré des besoins de développement ou décision de déploiement appuyée par des contraintes réelles.
- **Preuves :** `Dockerfile`, `compose.yaml`, `.devcontainer/` si utilisé.

### NXS-DEC-009 — RSpec et contrôles automatisés de qualité

- **Statut :** Retenue.
- **Décision :** employer RSpec pour les tests et conserver les contrôles adaptés disponibles dans le dépôt, notamment RuboCop, Brakeman et Bundler Audit. GitHub Actions sert d'automatisation de référence tant que le workflow est maintenu.
- **Justification :** détecter les régressions, les erreurs de style et certaines vulnérabilités avant intégration, sans imposer des outils ou processus d'équipe superflus.
- **Alternative non retenue à ce stade :** publier uniquement après vérification manuelle ou ajouter systématiquement une nouvelle plateforme de qualité.
- **Compromis :** temps de maintenance et exécution des outils ; aucun scanner ni test ne démontre à lui seul l'absence de défauts.
- **Réexamen :** qualité réelle des contrôles, coût d'exécution ou besoin spécifique non couvert.
- **Preuves :** `spec/`, `.rspec`, `.rubocop.yml`, `Gemfile`, `bin/ci`, `.github/workflows/ci.yml`. **Aucun succès récent n'est attesté ici.**

### NXS-DEC-010 — JavaScript uniquement lorsque justifié

- **Statut :** Retenue.
- **Décision :** privilégier HTML, CSS et rendu Rails/Phlex ; ne pas introduire de framework frontend JavaScript par défaut. Un script ciblé reste possible si un besoin réel le justifie.
- **Justification :** limiter les dépendances et les comportements côté client inutiles pour la V1 statique.
- **Alternative non retenue à ce stade :** imposer une SPA ou une couche JavaScript importante à l'ensemble du produit.
- **Compromis :** des interactions riches pourront nécessiter du JavaScript et des tests navigateur supplémentaires.
- **Réexamen :** fonctionnalité précise nécessitant une interaction côté navigateur, après examen des solutions les plus simples et accessibles.
- **Référence :** `04-system-architecture.md` et `05-engineering-standards.md`.

### NXS-DEC-011 — Pas de complexité anticipée

- **Statut :** Retenue.
- **Décision :** ne pas adopter de microservices, bus d'événements, moteur de plugins, plateforme d'IA, hébergement vidéo, infrastructure temps réel ou découpage en plusieurs applications uniquement au titre de la vision finale.
- **Justification :** la perspective d'un écosystème immersif ne prouve pas le besoin actuel de ces systèmes.
- **Alternative non retenue à ce stade :** architecture « prête pour tout » dès le premier lancement.
- **Compromis :** certaines évolutions futures pourront demander des adaptations ou extractions planifiées.
- **Réexamen :** besoin validé, contraintes techniques mesurées et comparaison documentée des solutions.
- **Référence :** `02-product-vision.md` et `03-functional-scope.md` ; les possibilités futures seront dans `07-product-roadmap.md`.

### NXS-DEC-012 — Dépôt public, produit propriétaire

- **Statut :** Retenue.
- **Décision :** conserver la distinction entre la **visibilité publique du code sur GitHub** et les **autorisations de réutilisation** définies par la licence applicable. Le dépôt n'est pas présenté comme une distribution open source.
- **Justification :** pouvoir montrer le travail sans redéfinir la nature propriétaire de NEXSPRO.
- **Alternative non retenue à ce stade :** publier le projet sous une licence open source ou le transformer en logiciel générique à distribuer.
- **Compromis :** le code rendu public reste visible et copiable matériellement ; la licence n'est pas un mécanisme technique empêchant la copie. Les secrets, eux, ne doivent jamais être publiés.
- **Réexamen :** changement volontaire de stratégie de publication, de distribution ou de licence ; une analyse juridique peut être nécessaire.
- **Preuves et références :** dépôt public `nexsura/nexspro`, fichier `LICENSE`, `README.md`, `01-project-definition.md`.

## 5. Points techniques ouverts — ne pas transformer en décisions

Ces questions doivent être examinées **au moment où elles ont une conséquence réelle**. Leur présence ici ne signifie pas qu'une solution est déjà choisie.

| Question | Ce qui reste à établir | Déclencheur d'arbitrage |
| --- | --- | --- |
| **Hébergement de production** | Prestataire, architecture de déploiement, domaine, HTTPS, sauvegardes et retour arrière | Préparation effective de la mise en ligne |
| **Utilité des composants Solid** (`solid_cache`, `solid_queue`, `solid_cable`) | Configurations et usages réels ; bénéfice de leur conservation | Audit de l'exploitation et des besoins de la V1 |
| **Bases PostgreSQL multiples** | Configurations et données effectivement nécessaires selon les environnements | Choix du déploiement, simplification ou ajout de données |
| **PWA / service worker** | Existence des routes et fichiers ne suffit pas à prouver une fonctionnalité PWA complète ni à justifier sa publication | Vérification des exigences et comportement souhaité |
| **Outils d'administration / gestion éditoriale** | Fréquence des changements de contenu et besoin réel d'édition sans code | Difficulté concrète à maintenir le contenu statique |
| **Authentification, communauté, streaming intégré, paiement, IA** | Cas d'usage, risques, données, coût et critères de valeur | Décision produit future explicite |

**Principe :** ne pas retirer un composant ou une dépendance parce qu'il semble inutile à première vue. Vérifier d'abord ses références, sa configuration, ses effets de bord et les scénarios d'utilisation. Une suppression reste une modification du projet soumise à décision explicite.

## 6. Comment enregistrer une nouvelle décision

Une nouvelle fiche est nécessaire **lorsqu'un choix affecte durablement** la structure, la sécurité, les dépendances majeures, les données, le déploiement ou la capacité d'évolution. Un simple changement de texte ou de classe CSS ne requiert pas d'entrée.

Utiliser ce format minimal :

```markdown
### NXS-DEC-013 — Titre explicite

- **Statut :** Retenue / À trancher / Remplacée.
- **Date d'enregistrement :** AAAA-MM-JJ.
- **Contexte :** quel besoin ou problème concret ?
- **Décision :** quel choix précis et quel périmètre ?
- **Options examinées :** alternatives réellement considérées.
- **Justification :** raisons techniques et produit.
- **Compromis et risques :** ce que le choix coûte ou limite.
- **Réexamen :** quelles conditions peuvent le faire évoluer ?
- **Preuves / références :** fichiers, documentation et tests concernés.
```

Le numéro suivant dépend du registre existant ; **`NXS-DEC-013` est un exemple de prochain identifiant, pas une décision adoptée**. Ne pas remplir artificiellement les alternatives si aucune n'a été évaluée : indiquer explicitement ce qui reste à examiner.

### Modifier ou remplacer une décision

1. Constater le besoin et lire l'état **réel** du commit concerné.
2. Évaluer la solution existante, les alternatives, les effets sur sécurité, données, maintenance et retour arrière.
3. Enregistrer la nouvelle décision et, si nécessaire, marquer l'ancienne **Remplacée** en indiquant sa remplaçante.
4. Mettre à jour les documents concernés : architecture dans `04`, règles dans `05`, périmètre dans `03`, perspectives dans `07`.
5. Vérifier le résultat **avant** de déclarer une migration ou modification réussie. Le registre n'est pas un procès-verbal d'exécution.

## 7. Sources, limites et maintenance

### Sources du projet

- [Dépôt NEXSPRO](https://github.com/nexsura/nexspro)
- [Gemfile](https://github.com/nexsura/nexspro/blob/main/Gemfile) et [Gemfile.lock](https://github.com/nexsura/nexspro/blob/main/Gemfile.lock)
- [Routes Rails](https://github.com/nexsura/nexspro/blob/main/config/routes.rb)
- [Docker Compose](https://github.com/nexsura/nexspro/blob/main/compose.yaml)
- [CI GitHub Actions](https://github.com/nexsura/nexspro/blob/main/.github/workflows/ci.yml)
- [Licence](https://github.com/nexsura/nexspro/blob/main/LICENSE)

### Références officielles utiles

- [Ruby on Rails — Guides](https://guides.rubyonrails.org/)
- [Phlex — Documentation](https://www.phlex.fun/)
- [Docker Compose — Documentation](https://docs.docker.com/compose/)
- [GitHub Actions — Documentation](https://docs.github.com/en/actions)

### Limites d'observation

La version 1.0 a été rédigée à partir des **décisions réaffirmées par le propriétaire**, des documents `01` à `05` présents dans l'espace de travail et d'une **consultation en lecture seule** de pages publiques du dépôt. Les résultats GitHub accessibles peuvent être mis en cache. **Aucun SHA du dernier commit local n'a été vérifié ici ; aucun test, déploiement, audit de performance ou migration n'a été exécuté.** L'utilité exacte des dépendances déclarées et la configuration de production ne sont pas certifiées par ce registre.

Ce registre est une **référence durable et évolutive** : seules les nouvelles décisions ou les révisions effectives doivent modifier son contenu. Les versions techniques exactes restent du ressort des fichiers du dépôt, et les progrès de réalisation du ressort des tests et du suivi de livraison.

**Historique documentaire**

| Version | Date | Modification |
| --- | --- | --- |
| 1.0 | 2026-11-02 | Enregistrement initial des décisions structurantes confirmées et des arbitrages encore ouverts. |
