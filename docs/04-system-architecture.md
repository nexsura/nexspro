# NEXSPRO — Architecture technique

**Version :** 1.1  
**Mise à jour :** 2 novembre 2026

NEXSPRO est une seule application Ruby on Rails. Les pages sont générées côté serveur avec Phlex, les styles sont écrits avec Tailwind CSS et l'environnement de développement fonctionne avec Docker Compose.

L'objectif est de garder une architecture simple, que je peux comprendre, maintenir et faire évoluer sans multiplier les services.

## 1. Technologies

| Technologie | Rôle |
| --- | --- |
| Ruby on Rails | Application web, routes, contrôleurs et configuration |
| Puma | Serveur Rails et lancement du watcher Tailwind en développement |
| Phlex / phlex-rails | Pages, layouts et composants HTML en Ruby |
| Tailwind CSS | Styles et thème graphique |
| Propshaft | Gestion des assets Rails |
| PostgreSQL | Base de données de l'application |
| Docker Compose | Démarrage de Rails et PostgreSQL en local |
| RSpec | Tests automatisés |
| GitHub Actions | Contrôles automatiques du dépôt |

Les versions exactes sont celles des fichiers `.ruby-version` et `Gemfile.lock` du commit utilisé.

## 2. Comment une page s'affiche

Le parcours de la page d'accueil est le suivant :

1. Le navigateur demande `/`.
2. `config/routes.rb` dirige la requête vers `HomeController#index`.
3. Le contrôleur rend `Views::Pages::Home::Index`.
4. La page Phlex utilise `Views::Base`, le layout commun et les composants nécessaires.
5. Rails renvoie le HTML ; le navigateur charge le CSS et les images.

Ce fonctionnement est commun aux différentes rubriques du site. Les pages de la V1 ne nécessitent pas, par principe, d'interroger PostgreSQL.

## 3. Organisation du code

```text
app/controllers/                  Contrôleurs Rails
app/views/pages/                  Pages Phlex classées par rubrique
app/views/components/             Composants réutilisables
app/views/layouts/                Structure HTML commune
app/views/base.rb                 Base des pages Phlex
app/assets/tailwind/              Styles et thème Tailwind
config/routes.rb                  Routes du site
config/puma.rb                    Configuration Puma et plugin Tailwind
config/database.yml               Connexions PostgreSQL
spec/                             Tests RSpec
.github/workflows/                Intégration continue
Dockerfile                        Image de l'application
compose.yaml                      Services Docker locaux
bin/setup                         Préparation de l'environnement
db/                               Schémas et migrations
```

La navigation du site regroupe six univers : Home, Studio, Streaming, Gaming, Library et Connect. Les routes et les pages restent dans l'application Rails ; il n'y a pas de frontend séparé.

## 4. Démarrage local et compilation Tailwind

**Le démarrage de référence est Docker Compose.** Il gère les deux services locaux : l'application Rails et PostgreSQL.

```bash
docker compose up -d
```

Puma démarre le serveur Rails. En environnement de développement, le plugin `tailwindcss` déclaré dans `config/puma.rb` lance aussi la surveillance des fichiers Tailwind. Le CSS est reconstruit lorsque les styles ou les classes détectées par Tailwind changent.

Ce fonctionnement a été vérifié manuellement pendant le développement : une modification de classe Tailwind dans une page Phlex a bien été prise en compte.

**Foreman et le watcher défini dans `Procfile.dev` ne font plus partie du démarrage choisi.** `bin/dev` et `Procfile.dev` peuvent être retirés si aucun autre parcours de développement ne les utilise. Si ces fichiers sont supprimés, `bin/setup` doit également cesser d'appeler `bin/dev`.

`bin/setup` conserve son rôle de préparation de l'environnement : dépendances Ruby, préparation de la base et nettoyage des fichiers temporaires. Son option `--reset` réinitialise la base ciblée et ne doit pas être utilisée sur des données à conserver.

La compilation des assets pour les tests ou la production est distincte de la surveillance continue utilisée en développement. Elle ne dépend pas du watcher Puma.

## 5. Données et services Rails

PostgreSQL est disponible dans l'environnement local, mais les contenus statiques de la V1 peuvent rester directement dans les pages Phlex.

Le dépôt contient aussi des configurations pour Solid Cache, Solid Queue et Solid Cable. Elles sont notamment prévues dans la configuration de production. L'audit n'a pas identifié de besoin métier actuel de cache explicite, de jobs applicatifs ou de communication temps réel. Leur éventuelle simplification devra être étudiée avec les fichiers de configuration et le futur hébergement.

Des routes et fichiers PWA existent également. Leur présence ne garantit pas à elle seule qu'une installation PWA complète soit opérationnelle.

## 6. Tests et environnements

- **Développement :** Docker Compose, Rails, Puma, Tailwind et PostgreSQL.
- **Tests :** RSpec et une base distincte des données de développement à préserver.
- **Production :** hébergement, secrets, sauvegardes et stratégie de déploiement à définir avant la mise en ligne.

Les scripts de CI et les contrôles de sécurité font partie du dépôt. Leur présence ne signifie pas que tous les tests passent : chaque résultat doit être vérifié sur le commit concerné.

## 7. Principes d'évolution

Une nouvelle page doit d'abord s'intégrer aux routes, contrôleurs, vues Phlex et composants existants. Une nouvelle dépendance ou un nouveau service ne se justifie que s'il répond à un besoin réel.

L'application reste un monolithe Rails tant qu'aucune contrainte concrète ne nécessite une autre architecture. Les décisions qui changent sa structure sont consignées dans `06-technical-decisions.md`.

**Point restant à confirmer dans le clone local :** la suppression effective de `bin/dev` et `Procfile.dev`, ainsi que la mise à jour correspondante de `bin/setup`. Le plugin Puma et la reconstruction automatique du CSS ont été confirmés par le propriétaire, pas par une exécution dans cet audit documentaire.
