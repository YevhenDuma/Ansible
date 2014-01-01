#!/bin/bash
. ~/.bash_profile
cd /var/www/discourse
gem install bluepill > /tmp/bluepill.log
echo 'alias bluepill="NOEXEC_DISABLE=1 bluepill --no-privileged -c ~/.bluepill"' >> ~/.bash_aliases
rvm wrapper $(rvm current) bootup bluepill
rvm wrapper $(rvm current) bootup bundle
