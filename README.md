# Programming Assignment 2: Hello Rails (RottenPotatoes)

A Rails movie-catalog app with full CRUD, sortable index columns, and Heroku deployment.

## Deployed app

**Live URL:** _(add after Heroku deploy)_

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

## Heroku deploy

```sh
heroku login
heroku create
heroku addons:create heroku-postgresql:essential-0
heroku config:set RAILS_MASTER_KEY=$(cat config/master.key)
git push heroku main
heroku run rails db:seed
```
