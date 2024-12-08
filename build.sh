#!/bin/bash

new_secret="$(node -e "console.log(require('crypto').randomBytes(32).toString('hex'));")"
cat docker-compose.changeme.yml | sed "s/GENIEACS_UI_JWT_SECRET=changeme/GENIEACS_UI_JWT_SECRET=${new_secret}/g" > docker-compose.yml
docker build -t voost/genieacs:1.2.13 .
docker-compose up -d
