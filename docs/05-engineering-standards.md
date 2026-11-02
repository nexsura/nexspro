# NEXSPRO — Standards d'ingénierie

**Document :** `docs/05-engineering-standards.md`  
**Statut :** référence normative du projet  
**Version :** 1.0  
**Dernière mise à jour :** 2 novembre 2026  
**Responsable :** propriétaire de NEXSPRO  
**Périmètre :** règles de conception, de programmation, de validation, de sécurité et de maintenance des évolutions de NEXSPRO

## 1. Objet et autorité

Ce document établit les **règles de travail applicables à NEXSPRO**, un site officiel propriétaire développé par une seule personne. Il vise un code compréhensible, fiable, sécurisé et durable, **sans processus d'équipe artificiels ni complexité anticipée**.

Il complète :

- [`01-project-definition.md`](01-project-definition.md) : identité et nature du projet ;
- [`02-product-vision.md`](02-product-vision.md) : ambition et expérience recherchée ;
- [`03-functional-scope.md`](03-functional-scope.md) : exigences et critères de livraison de la V1 ;
- [`04-system-architecture.md`](04-system-architecture.md) : organisation technique effectivement observée ;
- `06-technical-decisions.md` : décisions et arbitrages structurants ;
- `07-product-roadmap.md` : évolutions envisagées.

**Convention normative :**

- **Obligatoire** : règle à respecter pour tout changement concerné, sauf décision explicite et documentée du propriétaire.
- **Conditionnel** : règle obligatoire seulement si la fonctionnalité ou l'opération correspondante existe.
- **Recommandé** : préférence technique, à arbitrer selon les circonstances.
- **À vérifier** : état réel ou résultat qui ne peut être affirmé sans inspection ou exécution.

Ces règles sont la **référence V1.0, définitive dans leur rôle mais révisable dans leur contenu**. Elles ne prouvent pas que le dépôt les respecte déjà intégralement.

## 2. Principes fondamentaux

1. **Besoin avant solution.** Tout changement répond à une exigence du périmètre validé ou à un défaut avéré.
2. **Simplicité avant sophistication.** Réutiliser les mécanismes Ruby, Rails, Phlex et Tailwind déjà disponibles avant d'ajouter des couches, bibliothèques ou services.
3. **Exactitude avant affirmation.** Aucune API, méthode, commande, version, capacité ou réussite de test ne doit être supposée. La documentation des versions effectivement installées fait référence.
4. **Une responsabilité identifiable par élément.** Routes, contrôleurs, pages, composants et configurations gardent des rôles distincts.
5. **Lisibilité avant optimisation spéculative.** Optimiser à partir d'un problème observé ou de mesures, pas d'une croissance imaginée.
6. **Sécurité et accessibilité dès la conception.** Ne pas remettre les exigences essentielles à une hypothétique future refonte.
7. **Évolution contrôlée.** Les changements structurels s'accompagnent de vérifications adaptées, d'une justification et, selon le risque, d'une solution de retour arrière.
8. **Propriété du produit.** La documentation ne transforme pas NEXSPRO en bibliothèque distribuable, framework, SaaS ou projet communautaire open source.

## 3. Sources de vérité et ordre de vérification

Pour une tâche technique, appliquer cet ordre :

1. **Décisions explicites du propriétaire** pour l'objectif et le périmètre produit.
2. **Fichiers du commit réellement travaillé** pour la structure et la configuration : notamment `Gemfile.lock`, `.ruby-version`, `config/routes.rb`, `app/`, `spec/`, `bin/ci`, `compose.yaml` et `.github/workflows/ci.yml`.
3. **Documentation officielle correspondant à la version installée** : Ruby, Rails, Phlex, Tailwind CSS, PostgreSQL, Docker, RSpec et outils concernés.
4. **Résultats effectivement exécutés** pour la conformité et le comportement ; préciser la commande, l'environnement et le commit.

Une règle de ce document n'autorise pas à contredire le code observé en affirmant que la modification est déjà faite. **Toute différence constatée entre standard et implémentation devient un point à corriger ou une décision à documenter.**

Dans les comptes rendus, distinguer systématiquement : **constaté**, **décidé**, **recommandé**, **non vérifié** et **testé avec résultat**.

## 4. Ruby et Rails

### 4.1 Conventions du langage

**Obligatoire :**

- Suivre la syntaxe et les mécanismes documentés de Ruby et de la version de Rails du dépôt.
- Respecter les conventions de nommage et d'autoloading Rails ; éviter les `require` manuels destinés à masquer une organisation incorrecte.
- Utiliser les noms explicites, les méthodes courtes lorsque cela améliore la compréhension et des conditions lisibles.
- Éviter duplication évitable, code mort, commentaires trompeurs et traitements silencieux des erreurs.
- Préserver la compatibilité avec `.ruby-version`, `Gemfile` et `Gemfile.lock` ; ne pas monter de version ou changer une dépendance sans besoin et vérification.
- Conserver le formatage défini par `.rubocop.yml`, actuellement fondé sur **RuboCop Rails Omakase** dans le dépôt public consulté.

**Recommandé :** préférer un code Ruby clair à des métaprogrammations ou abstractions génériques difficiles à maintenir.

### 4.2 Responsabilités dans Rails

| Élément | Règle |
| --- | --- |
| `config/routes.rb` | Déclarer les points d'entrée ; utiliser des noms cohérents avec les pages et les actions. |
| Contrôleurs | Rester concentrés sur la requête, l'orchestration et le choix de la réponse ; éviter d'y entasser du HTML ou une logique métier volumineuse. |
| Pages Phlex | Décrire le rendu propre à la page et assembler les composants utiles. |
| Composants Phlex | Factoriser seulement ce qui est véritablement réutilisé ou possède une responsabilité autonome claire. |
| Modèles / services | Les introduire **si un besoin métier effectif l'exige**, pas uniquement pour remplir des dossiers Rails. |
| Initializers / configuration | Centraliser la configuration transversale ; ne pas y placer de règles métier ou de secrets en clair. |

**Obligatoire :** privilégier l'architecture Rails unique existante. Aucun frontend SPA, microservice, moteur Rails ou mécanisme de plugins n'est ajouté par anticipation.

## 5. Phlex, HTML et interface

- **Obligatoire :** conserver le rendu HTML côté serveur comme approche de référence de la V1.
- **Obligatoire :** respecter l'organisation Phlex réellement utilisée (`app/views/pages/`, `app/views/components/`, `app/views/layouts/`, `Views::Base`) et ses conventions d'autoloading vérifiées.
- **Obligatoire :** produire une structure HTML sémantique : titres hiérarchisés, navigation, contenu principal, liens et actions appropriés à leur fonction.
- **Obligatoire :** ne jamais insérer directement du HTML non fiable en désactivant l'échappement ; toute donnée externe devra être traitée suivant son contexte d'affichage.
- **Obligatoire :** limiter les composants à une API compréhensible et à un besoin réel ; ne pas multiplier les variantes ou les paramètres par anticipation.
- **Obligatoire :** faire correspondre la langue déclarée dans le HTML à la langue effective des contenus et conserver des libellés accessibles.
- **Recommandé :** privilégier les composants et le layout déjà existants avant d'en créer de nouveaux.

**JavaScript :** aucun framework client n'est requis pour la V1. Ajouter du JavaScript uniquement lorsque l'interaction ne peut être satisfaite raisonnablement par HTML/CSS ou les capacités déjà présentes ; expliciter le besoin, assurer l'accessibilité et vérifier le comportement sans script lorsque pertinent.

## 6. Tailwind CSS et design

**Obligatoire :**

- Conserver une identité visuelle cohérente sur Home, Studio, Streaming, Gaming, Library et Connect.
- Réutiliser la configuration Tailwind et les tokens du thème existant avant de créer des valeurs isolées.
- Préserver la lisibilité, les contrastes, les états de focus et l'utilisation au clavier.
- Maintenir une interface utilisable sur petits écrans sans débordement horizontal empêchant la lecture du contenu essentiel.
- Éviter les styles dupliqués ou les classes dynamiques non reconnues par la compilation de Tailwind.
- Respecter les préférences de réduction des animations lorsqu'un mouvement non essentiel est introduit.

**Recommandé :** n'introduire de nouvelle abstraction CSS ou de bibliothèque visuelle que si la duplication ou une limitation concrète le justifie. L'aspect immersif peut évoluer progressivement : il ne doit pas dégrader la V1.

## 7. Données, configuration et dépendances

- **Obligatoire :** garder les environnements **développement**, **test** et **production** distincts ; ne jamais utiliser une base réelle comme base de test.
- **Obligatoire :** stocker les valeurs sensibles dans les mécanismes de secrets ou variables d'environnement adaptés, et non dans le code source ou `docs/`.
- **Obligatoire :** versionner le `Gemfile.lock` de cette application, vérifier l'impact d'une mise à jour et ne jamais le modifier arbitrairement à la main.
- **Conditionnel :** toute migration de données nécessite une justification, une vérification adaptée et une stratégie de récupération ou de retour arrière proportionnée au risque.
- **Conditionnel :** si des données importantes sont persistées, définir avant mise en production leur sauvegarde, leur restauration et leurs règles de conservation.
- **Recommandé :** conserver les fonctions statiques hors de la base de données lorsqu'aucune valeur réelle n'est apportée par leur persistance.

**Ajout de dépendance ou de service :** documenter le besoin, les alternatives utilisant la stack existante, les contraintes de maintenance et de sécurité, les licences tierces, l'effet sur les tests et le retour arrière. Les éléments structurants sont consignés dans `06-technical-decisions.md`.

## 8. Tests : stratégie proportionnée au risque

**Obligatoire :** tout changement fonctionnel doit être accompagné de vérifications qui démontrent son comportement, plutôt que de tests ajoutés seulement pour augmenter un indicateur de couverture.

| Changement | Vérification attendue |
| --- | --- |
| Nouvelle page ou route | Test de requête RSpec : réponse et contenu pertinent ; test du lien de navigation si nécessaire. |
| Modification de layout ou de navigation | Vérification des pages concernées, sémantique HTML, clavier et adaptation mobile. |
| Composant Phlex réutilisé | Test de rendu ciblé si son comportement comporte des branches, variantes ou données. |
| Correction de bug | Test reproduisant le problème lorsque raisonnablement possible, puis vérification de la correction. |
| Logique métier nouvelle | Cas normal, cas limites et erreurs adaptés au niveau de risque. |
| Changement de configuration, sécurité ou base | Contrôles dédiés et validation dans l'environnement concerné avant livraison. |

**Obligatoire :**

- Utiliser **RSpec** comme référentiel principal de tests du projet actuel.
- Garder les tests déterministes, compréhensibles et indépendants des services externes non maîtrisés quand c'est possible.
- Tester les effets observables plutôt que les détails internes sans importance.
- Ne pas affirmer qu'une page, un contrôle ou le site complet a été « testé » sans résultat d'exécution identifié.
- Ne pas déduire d'un taux de couverture la qualité fonctionnelle, l'accessibilité ou la sécurité.

**Recommandé :** privilégier les tests de requête pour la V1 principalement statique ; introduire des tests navigateur complets seulement lorsque des interactions le justifient.

## 9. Sécurité et confidentialité

**Obligatoire pour le site public :**

1. **Secrets :** aucun mot de passe, jeton, clé privée, credential déchiffré ou donnée confidentielle dans Git, le HTML servi ou les fichiers publics. En cas de fuite, révoquer/renouveler le secret ; un simple retrait du dernier commit ne suffit pas.
2. **Entrées et sorties :** valider les entrées selon leur usage ; conserver l'échappement HTML et les protections Rails pertinentes contre injections et XSS. Ne jamais utiliser de contournement tel que `html_safe` sur des données non fiables.
3. **Protections Rails :** ne pas désactiver CSRF, CSP ou d'autres protections par commodité. Vérifier la configuration réellement appliquée avant publication ; certaines protections dépendent des types de requêtes et de leur configuration.
4. **Accès :** ne pas exposer d'endpoint privé, de console, d'information de débogage ou de document interne dans la version publique.
5. **Dépendances :** examiner les alertes de sécurité et les mises à jour nécessaires avant la livraison ; évaluer les alertes réelles, sans les ignorer automatiquement.
6. **Liens et intégrations :** distinguer les services tiers des fonctionnalités internes, et contrôler les destinations des liens officiels.
7. **Données personnelles :** ne collecter que ce qui est nécessaire si une fonction future introduit une collecte ; déterminer les obligations applicables avant activation.

**Conditionnel :** toute future authentification, autorisation, intégration de paiements, upload ou action d'écriture publique impose une analyse de risques et des tests spécifiques **avant** sa mise à disposition. Aucun de ces systèmes n'est requis pour la V1.

Les analyses automatisées (Brakeman, Bundler Audit, CI) **complètent** la revue du code ; elles ne garantissent jamais l'absence de vulnérabilités.

## 10. Accessibilité, SEO, performance et contenu

Les exigences fonctionnelles appartiennent à `03-functional-scope.md`. Pour leur mise en œuvre :

- **Accessibilité :** viser **WCAG 2.2 AA** ; vérifier les parcours clavier, le focus visible, les alternatives textuelles, les noms accessibles, les contrastes et l'utilisation mobile. Ne déclarer une conformité qu'après évaluation adaptée.
- **SEO :** définir des titres et descriptions pertinents, une structure de titres cohérente, des URL stables et des contenus publics exacts. Ne pas inventer des métadonnées ou données structurées décrivant des services absents.
- **Performance :** privilégier des images adaptées, des ressources raisonnables et l'absence de JavaScript superflu ; mesurer les problèmes avant de fixer des budgets chiffrés ou une optimisation lourde.
- **Contenu :** publier uniquement des informations vérifiées ; signaler honnêtement les rubriques dont les fonctionnalités ne sont pas encore disponibles ; respecter les droits sur les contenus tiers.

**Obligatoire :** vérifier le résultat visible sur plusieurs formats d'écran et contrôler les liens, médias et métadonnées touchés par un changement.

## 11. Git, revue personnelle et traçabilité

**Obligatoire :**

- Travailler à partir d'un état connu (`git status`, commit ou différence identifiés) et examiner le diff avant tout commit.
- Effectuer des commits compréhensibles, correspondant à des changements cohérents ; ne pas mélanger sans raison refonte visuelle, suppression de dépendances et migration de base.
- Ne pas committer de secrets, fichiers de configuration locale sensibles, données personnelles, journaux ou artefacts générés non prévus.
- Documenter les décisions techniques structurantes et les effets sur l'architecture ou le périmètre.
- Ne pas réécrire l'historique, forcer un push, supprimer des fichiers sensibles ou déployer sans décision explicite du propriétaire.

**Recommandé :** utiliser une branche dédiée pour un changement risqué et réaliser une revue personnelle du diff, des tests et des conséquences avant fusion. Un processus d'approbation à plusieurs personnes n'est pas exigé pour ce projet individuel.

## 12. Vérifications et CI : commandes et précautions

Le dépôt public consulté contient `bin/ci` et un workflow `.github/workflows/ci.yml`. Le script `bin/ci` visible exécute notamment la préparation de la base de **test**, le contrôle Zeitwerk, RSpec, la compilation des assets, RuboCop, Brakeman et Bundler Audit. Il finit aussi par **`bin/rails db:seed:replant`** : cette opération réinitialise des données de seeds dans l'environnement de test ciblé.

**Avertissement obligatoire :** ne lancer `bin/ci`, `db:prepare`, `db:seed:replant`, des migrations ou des commandes Docker susceptibles de modifier l'environnement **qu'après avoir confirmé** `RAILS_ENV`, `DATABASE_URL` et `TEST_DATABASE_URL`, ainsi que l'isolation effective de la base de test. Le script refuse explicitement `RAILS_ENV=production`, mais **ce garde-fou ne remplace pas la vérification des URL de base**. Ne jamais lancer ces commandes contre une base de production ou une base contenant des données à conserver.

### Vérifications initiales (lecture du dépôt)

```bash
# Exécuter depuis la racine du projet, sans afficher ni partager de secrets

git status --short
git rev-parse HEAD
cat .ruby-version
cat .rubocop.yml
sed -n '1,160p' bin/ci
git diff --check
```

### Contrôles ciblés (nécessitent un environnement préparé)

```bash
# Ces commandes peuvent créer des caches ou lire l'environnement applicatif.
bin/rails zeitwerk:check
bin/rails routes
bin/rubocop
bin/brakeman --no-pager
bin/bundler-audit check --update
```

### Contrôles avec effets de bord (environnement de test isolé uniquement)

```bash
# Après vérification des URL et préparation d'une base de TEST dédiée :
RAILS_ENV=test bundle exec rspec

# Vérification globale, incluant des écritures dans la base de test :
# bin/ci
```

Les commandes correspondent aux outils ou scripts **observés dans le dépôt public consulté** ; leur disponibilité, leurs résultats et leur innocuité dans le clone actuel ne sont pas présumés. Les compilations d'assets, les analyses et les tests peuvent également écrire des fichiers ou caches locaux. Le workflow GitHub Actions doit être vérifié sur le commit pertinent avant de lui attribuer un résultat ou une protection effective.

## 13. Conditions de qualité pour considérer un changement terminé

Un changement est **prêt à être intégré** lorsque, selon ce qui le concerne :

1. Son objectif correspond au périmètre validé ou à une correction identifiée.
2. Le code s'intègre à l'architecture existante sans dépendance ou abstraction injustifiée.
3. Les erreurs et cas pertinents sont traités ; aucun secret ou contenu privé n'est introduit.
4. Les tests ciblés sont définis et exécutés dans un environnement sûr, avec leurs résultats consignés.
5. Les contrôles de qualité et sécurité pertinents sont exécutés ou leurs limites sont explicitement notées.
6. La présentation, la navigation, le responsive et l'accessibilité sont revus si la modification touche l'interface.
7. Le diff est relu ; aucun fichier accidentel ou artefact inutile n'est intégré.
8. La documentation concernée est mise à jour lorsque le changement modifie une décision, le périmètre ou l'architecture.

**Un changement non exécuté ou seulement inspecté ne doit pas être déclaré validé.** Une anomalie ou une vérification impossible est décrite précisément, avec son risque et sa prochaine action. Les **critères d'acceptation de la V1 complète** restent définis par `03-functional-scope.md` : cette liste n'en est pas le remplacement.

## 14. Sources officielles et maintenance

### Documentation de référence

- [Ruby — documentation officielle](https://docs.ruby-lang.org/)
- [Ruby on Rails — Guides](https://guides.rubyonrails.org/)
- [Rails — sécurité](https://guides.rubyonrails.org/security.html)
- [Phlex — documentation](https://www.phlex.fun/)
- [Phlex — tests de composants](https://www.phlex.fun/components/testing)
- [Tailwind CSS — documentation](https://tailwindcss.com/docs)
- [RSpec — documentation](https://rspec.info/documentation/)
- [RuboCop Rails Omakase — dépôt officiel](https://github.com/rails/rubocop-rails-omakase)
- [Brakeman — documentation](https://brakemanscanner.org/docs/)
- [Bundler Audit — dépôt officiel](https://github.com/rubysec/bundler-audit)
- [GitHub Actions — documentation](https://docs.github.com/en/actions)
- [OWASP Top 10](https://owasp.org/projects/top-ten)
- [W3C — WCAG 2.2](https://www.w3.org/TR/WCAG22/)

### Fichiers du projet servant à vérifier ces standards

- [`Gemfile`](https://github.com/nexsura/nexspro/blob/main/Gemfile)
- [`Gemfile.lock`](https://github.com/nexsura/nexspro/blob/main/Gemfile.lock)
- [`.rubocop.yml`](https://github.com/nexsura/nexspro/blob/main/.rubocop.yml)
- [`bin/ci`](https://github.com/nexsura/nexspro/blob/main/bin/ci)
- [`.github/workflows/ci.yml`](https://github.com/nexsura/nexspro/blob/main/.github/workflows/ci.yml)
- [`spec/`](https://github.com/nexsura/nexspro/tree/main/spec)

### Maintenance de la référence

- La présente édition constitue le **standard de travail V1.0**. Elle reste applicable tant qu'elle n'est pas modifiée par le propriétaire.
- Une évolution doit décrire son **motif**, ses effets sur le code et les documents liés, la date et le numéro de version.
- Les décisions techniques majeures sont documentées dans `06-technical-decisions.md` ; les fonctionnalités envisagées dans `07-product-roadmap.md`.
- Les pratiques et commandes dépendant des versions sont **revérifiées sur le commit réellement développé** ; le document n'est pas une preuve de conformité automatique.
- **Limites de rédaction du 02/11/2026 :** consultation de documents 01 à 04 disponibles localement et de plusieurs fichiers publics GitHub ; aucune exécution de la CI ou des tests, aucun audit exhaustif du dernier SHA local et aucune modification du dépôt distant.

**Historique documentaire**

| Version | Date | Changement |
| --- | --- | --- |
| 1.0 | 2026-11-02 | Création des règles d'ingénierie de référence pour le développement et l'évolution de NEXSPRO. |
