# docker

## create a new image
```
$ sudo docker run -itd --name=client_setup ubuntu /bin/bash
$ sudo docker attach client_setup

# run in the container
# If you do not see the shell, click the up arrow.
$ apt-get install curl

# Now, detach from the client container using Ctrl+p then Ctrl+q.

$ sudo docker stop client_setup
$ sudo docker commit client_setup client_img
```

## concepts
1. docker engine
1. docker compose
1. docker swarm

## references
1. [Play with docker classroom](http://training.play-with-docker.com/)
