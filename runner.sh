#!/usr/bin/env bash

git pull

printf -v committer 'session on %(%b %d %Y at %I:%M:%S %p)T\n' -1

java -Xmx4G -jar fabric-server-launch.jar nogui

git add .
git commit -m "$committer"
git push