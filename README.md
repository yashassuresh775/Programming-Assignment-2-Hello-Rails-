# Programming Assignment 2: Hello Rails (RottenPotatoes)

A Rails movie-catalog app with full CRUD, sortable index columns, and cloud deployment.

## Deployed app

**Live URL:** https://rottenpotatoes-etq2.onrender.com

## Features

- Create, read, update, and delete movies
- Seed data with 8 films (re-seed safe via `find_or_create_by!`)
- Index table with `<thead>`, `<tbody>`, and `<tfoot>`
- Sort by title, rating, or release date (asc/desc)
- Sort selection remembered in the session when navigating away and back
- Highlighted sorted column with ▲ / ▼ cues (no CSS libraries)

## Local setup

```sh
bundle install
rails db:migrate
rails db:seed
rails server
```

Visit http://localhost:3000/ (redirects to `/movies`).

## Deploy (Render)

This repo includes `render.yaml` and `bin/render-build.sh` for Render’s free web service + Postgres.

1. Open [Render Blueprints](https://dashboard.render.com/blueprints)
2. Connect the GitHub repo `yashassuresh775/Programming-Assignment-2-Hello-Rails-`
3. When prompted, set `RAILS_MASTER_KEY` to the contents of local `config/master.key`
4. Approve the Blueprint
