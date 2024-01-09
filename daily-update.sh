#!/bin/bash

# add to crontab with: 0 0 * * * /path/to/daily-update.sh for daily updates
# update the content repository and push
cd ./content/ || exit
git pull --no-edit
cd ../ || exit
git commit -am "content: update"
git push
