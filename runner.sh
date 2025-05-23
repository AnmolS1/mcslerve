#!/usr/bin/env bash

cd ~/GitHub/mcslerve

git pull

committer="session on $(date '+%b %d %Y at %I:%M:%S %p')"

java -Xmx4G -jar fabric-server-launch.jar nogui

git add .
git commit -m "$committer"
git push