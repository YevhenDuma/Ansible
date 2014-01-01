#!/bin/bash 
. ~/.bash_profile
cd /var/www/discourse
RUBY_GC_MALLOC_LIMIT=90000000 RAILS_ROOT=/var/www/discourse RAILS_ENV=production NUM_WEBS=2 bluepill --no-privileged -c ~/.bluepill load /var/www/discourse/config/discourse.pill
