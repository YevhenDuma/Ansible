#!/bin/bash
curl -s -S -L https://get.rvm.io | bash -s stable
. ~/.bash_profile
cat ~/.bash_profile >> ~/.profile
rvm install 2.0.0
rvm use 2.0.0 --default 
gem install bundler 
cd /var/www/discourse
bundle install 
bundle install --deployment --without test
RUBY_GC_MALLOC_LIMIT=90000000 RAILS_ENV=production bundle exec rake db:migrate
RUBY_GC_MALLOC_LIMIT=90000000 RAILS_ENV=production bundle exec rake assets:precompile

