#!/bin/bash
RAILS_ENV=production
cd /sample
/usr/local/bin/envconsul -consul-addr=consul:8500 -once -sanitize -upcase  -prefix config/apps bundle exec puma -e $RAILS_ENV -b tcp://0.0.0.0:9292
