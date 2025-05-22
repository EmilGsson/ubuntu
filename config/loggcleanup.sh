#!/bin/bash

# Sökväg till loggmappen i ditt GitHub-repo
LOGGDIR="/home/emil/ubuntu/loggar"

# Rensa mappar äldre än 30 dagar
find "$LOGGDIR" -mindepth 1 -maxdepth 1 -type d -mtime +30 -exec rm -rf {} \;

# Gå till repot och pusha eventuella ändringar (även om det inte raderar från GitHub)
cd /home/emil/ubuntu
git add .
git commit -m "Rensade gamla lokala loggmappper från ubuntu/loggar"
git push
