# Get Started, Part 5: Stacks

## steps
```
# add the visualizer 
docker-machine scp docker-compose.yml myvm1:~
docker-machine ssh myvm1 "docker stack deploy -c docker-compose.yml getstartedlab"

# get the IP of your docker machines
docker-machine ls

# check the visualizer at <ip>:8080

# add the redis support
docker-machine ssh myvm1 "mkdir ./data"
docker-machine scp docker-compose2.yml myvm1:~/docker-compose.yml 
docker-machine ssh myvm1 "docker stack deploy -c docker-compose.yml getstartedlab"
```


