# Get Started, Part 3: Services

## steps
```
# enable swarm mode, this is a one node cluster
# make current machine a swarm manager
docker swarm init

docker stack deploy -c docker-compose.yml getstartedlab
docker stack ps getstartedlab

# run several times in a row
curl http://localhost

# modify docker-compose.yml
# change the replicas from 5 to 6
# deploy again
docker stack deploy -c docker-compose.yml getstartedlab

# take the app down
docker stack rm getstartedlab
```

## cheatsheet
```
docker stack ls              # List all running applications on this Docker host
docker stack deploy -c <composefile> <appname>  # Run the specified Compose file
docker stack services <appname>       # List the services associated with an app
docker stack ps <appname>   # List the running containers associated with an app
docker stack rm <appname>                             # Tear down an application
```
