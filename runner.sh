#!/usr/bin/env bash

git pull

printf -v committer 'session at %(%Y-%m-%d %H:%M:%S)T\n' -1

java -Xmx4G -jar fabric-server-launch.jar nogui

git add .
git commit -m "$committer"
git push