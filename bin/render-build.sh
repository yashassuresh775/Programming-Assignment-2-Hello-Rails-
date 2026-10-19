#!/usr/bin/env bash
# Exit on error
set -o errexit

bundle install
bin/rails assets:precompile
bin/rails assets:clean

# Free plans: run migrations (and seed) during build.
# Paid plans can move migrate to a pre-deploy command instead.
bin/rails db:migrate
bin/rails db:seed
