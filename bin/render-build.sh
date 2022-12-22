#!/user/bin/env bash
#exit or error
set -o errexit

bundle install
bundle exec rake assets:precompire
bundle exec rake assets:clean
bundle exec rake db:migrate