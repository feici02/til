# docker compose get started

Compose is a tool for defining and running multi-container Docker applications.
Using Compose is basically a three-step process.
1. Define your app’s environment with a Dockerfile so it can be reproduced anywhere.
1. Define the services that make up your app in docker-compose.yml so they can be run together in an isolated environment.
1. Lastly, run docker-compose up and Compose will start and run your entire app.

## steps
```
# start your app
docker-compose up

# enter http://localhost:5000 in browser
# refresh the page, the number will increase

# update app.py
# refresh the page, the greeting should be updated

# Ctrl+C to quit

# run app in detached mode
docker-compose up -d

dcoker-compose ps

# run one-off command for service "web"
docker-compose run web env

# stop the container
docker-compose stop

# stop and remove the container
docker-compose down -v
```
