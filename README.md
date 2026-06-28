# Accessibility Rails Components

WCAG 2.1 AA ViewComponent library and live showcase for Auckland/NZ developer roles (ANZSCO 261312).

[![CI](https://github.com/jen-the-dev/accessibility-rails-components/actions/workflows/ci.yml/badge.svg)](https://github.com/jen-the-dev/accessibility-rails-components/actions/workflows/ci.yml)

**Live demo:** [Deploy via Render](#deploy) — link added after first deploy

## Problem

Teams need reusable UI building blocks that stay accessible, testable, and maintainable across releases.

## Solution

Rails 7 app demonstrating three accessible ViewComponents with a recruiter-friendly live showcase:

- `AccessibleButtonComponent` — labelled buttons, variants, disabled state
- `AccessibleFormComponent` — associated labels, hints, required semantics
- `AccessibleModalComponent` — dialog role, keyboard close, backdrop handling

## Tech stack

- Ruby 3.3 · Rails 7.1 · ViewComponent · Stimulus · SQLite

## Quick start

```bash
bundle install
bin/setup
bin/rails server
```

Open `http://localhost:3000` · Health check: `/health`

## Testing

```bash
bundle exec rspec
```

## Deploy

### Render (recommended)

1. Fork or use this repo: `jen-the-dev/accessibility-rails-components`
2. In [Render Dashboard](https://dashboard.render.com), **New → Blueprint** and select `render.yaml`
3. After deploy, set the live URL in this README and on [projects-workspaces](https://github.com/jen-the-dev/projects-workspaces)

Or deploy manually as a **Docker Web Service** using the included `Dockerfile`.

## Evidence map

- Components: `app/components/`
- Showcase: `app/views/home/index.html.erb`
- Tests: `spec/`
- CI: `.github/workflows/ci.yml`

## Related

- Portfolio hub: [projects-workspaces](https://github.com/jen-the-dev/projects-workspaces)
- Live portfolio: [jenthedev.it.com](https://jenthedev.it.com)
