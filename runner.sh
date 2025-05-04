#!/usr/bin/env bash

git pull

java -Xmx4G -jar fabric-server-launch.jar nogui

printf -v date '%(%Y-%m-%d %H:%M:%S)T\n' -1

git add .
git commit -m "$date"
git push