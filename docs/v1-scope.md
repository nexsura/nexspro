# Nexspro V1 Launch Scope

## Context

Nexspro V1 is the first public version of the Nexspro website.

The README presents Nexspro as an ambitious digital product, but V1 must stay focused. This document defines what is included in V1, what is excluded from V1, what blocks the launch, and what can be moved to the post-V1 backlog.

V1 must be professional enough to show to visitors, recruiters, developers, and potential collaborators.

## V1 Goal

Nexspro V1 has two main goals:

1. Present Nexspro as a credible public brand.
2. Present Michael's work, process, projects, and content direction in a professional way.

V1 is not the final product. It is the first public version.

The goal is to launch a clean, stable, responsive, secure, tested, and visually credible website.

## Included V1 Pages

The following public pages and sections are included in Nexspro V1.

### Home

The Home page is the main entry point of Nexspro.

It must:

- Present Nexspro clearly
- Explain the direction of the project
- Give a professional first impression
- Avoid broken anchors or broken navigation
- Guide visitors toward the main sections

### Studio

The Studio section is included in V1.

It must present the professional side of Nexspro through the following categories:

- Profile
- Work
- Contact

#### Profile

The Profile page must explain who Michael is, how he works, and how he approaches building projects.

It should show:

- His process
- His technical direction
- His way of thinking
- His progression as a builder/developer

#### Work

The Work page must show completed or meaningful work.

It should help prove:

- What has already been built
- What was learned
- What was shipped
- What can be shown to recruiters, developers, or collaborators

#### Contact

The Contact page is part of the Studio section.

It must provide a clear way to contact Michael.

For V1, the contact experience can stay simple as long as it is clear, functional, and professional.

### Streaming

The Streaming section is included in V1.

It is not a full streaming platform in V1. It is a public section that presents the live/content side of Nexspro.

It must include the following categories:

- Live
- Setup
- Highlights

#### Live

The Live page must present the live schedule and, if technically possible later, display or link to the current live activity.

For V1, the goal is to show the live direction clearly. A real live platform is not required.

#### Setup

The Setup page must present the live equipment and setup.

In the future, this section may support recommendations, affiliate links, or product-related content, but selling features are not required for V1.

#### Highlights

The Highlights page must show live/content performance elements such as:

- Records
- Video clips
- Notable moments
- Strong content results

### Library

The Library section is included in V1.

It must organize useful knowledge and resources through the following categories:

- Books
- Guides
- Resources

#### Books

The Books page must show books that were actually read.

It should explain:

- What the book is about
- Why it matters
- Why someone should read it
- What value it can bring

#### Guides

The Guides page must contain tutorials, explanations, or practical help.

The goal is to provide useful content, not just placeholders.

#### Resources

The Resources page must provide useful external links organized by category.

These resources should help visitors find tools, references, or useful material connected to Nexspro topics.

### Legal Pages

The following legal pages are included in V1:

- Legal notice
- Privacy policy
- Terms and conditions

These pages must be present before the public launch.

### Theme Toggle

The dark/light theme toggle is included in V1.

It should be implemented because it is a reasonable feature for the V1 and existed in the previous version of the site.

## Excluded V1 Pages and Features

The following items are excluded from Nexspro V1:

- Authentication
- Login page
- Registration page
- User dashboard
- Admin dashboard
- Payment pages
- Subscription system
- Full CMS
- Real streaming infrastructure
- User-uploaded library content
- Back-office pages
- Advanced account features
- Advanced analytics
- Full product marketplace
- Full live platform
- Full deployment automation beyond what is required for launch

These features can be considered after V1.

## V1 Launch Criteria

Nexspro V1 is considered launch-ready when:

- All included V1 pages exist
- All included V1 pages render successfully
- All public V1 routes return successful HTTP responses
- The Home page is stable
- No broken home scroll anchor remains
- Main navigation works on desktop
- Main navigation works on mobile
- Navigation is keyboard-friendly
- The dark/light theme toggle works correctly
- The main layout is responsive
- No critical text overflow exists on common screen sizes
- The site looks professional enough to avoid a beginner impression
- Legal pages are present
- Page-level metadata is added where needed
- robots.txt is finalized
- sitemap is finalized if required
- Required CI checks pass
- Rails smoke test passes
- Docker smoke test passes
- Coverage remains above the required threshold
- No known launch blocker remains open

## Required Quality Gates

The following checks must pass before V1 can be considered ready:

- Actionlint
- Hadolint
- Assets
- Rails
- Docker
- Smoke
- Docker Smoke
- Secrets
- CodeQL
- Semgrep when applicable
- SimpleCov coverage threshold

The project must stay secure, functional, and tested.

## Launch Blockers

The following items block the V1 launch:

- Broken public route
- Broken Home page
- Broken main navigation
- Broken mobile navigation
- Broken keyboard navigation
- Broken dark/light theme toggle
- Failed required CI check
- Rails app unable to boot
- Docker app unable to boot
- Docker image unable to build
- Critical responsive layout issue
- Critical visual issue that makes the site look unfinished
- Missing legal pages
- Missing required public page
- Known committed secret
- High-impact security issue
- Any issue that can break the project, expose data, or make the public launch unsafe

## V1 Non-goals

The following are intentionally not part of V1:

- Building the full final Nexspro platform
- Building authentication
- Building payments
- Building subscriptions
- Building a full CMS
- Building a real streaming platform
- Building user-uploaded content features
- Building advanced analytics
- Building advanced sales systems
- Adding unnecessary architecture
- Adding tools only for appearance
- Expanding the scope beyond a public launch website

V1 must stay focused on a professional public website, not on shipping every future Nexspro product idea.

## Post-V1 Backlog

The following items can be handled after V1:

- Authentication
- User dashboard
- Admin dashboard
- Payment or subscription system
- Real live streaming integration
- Advanced live features
- Product or affiliate system for setup content
- Privacy-friendly analytics
- Production error monitoring
- Custom Rails error pages
- Separate development Docker from production Docker
- Full PWA support
- Advanced responsive system tests
- Higher branch coverage
- More complete portfolio/project content
- More complete library features
- More guides and resources
- Advanced SEO improvements
- Performance optimization
- Deployment automation improvements
- Additional public content sections

## Definition of Done

This scope document is complete when:

- Included V1 pages are listed
- Excluded V1 pages are listed
- Launch criteria are defined
- V1 non-goals are defined
- Post-V1 backlog items are listed separately
- Launch blockers are clearly defined
- The document can be linked from the README if needed