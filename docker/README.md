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

## stop/start/attach a container
```
docker run -itd --name test ubuntu bash
docker attach test
# quit from container: Ctrl+p, Ctrl+q

# it is still running
docker ps

docker attach test
# run exit command in the container

# check the status of the container: exited
docker ps

docker start test
docker ps

docker stop test
docker ps
```

## about docker attach/logs
```
docker run -itd --name test ubuntu bash -c "while true; do echo hi; sleep 1; done"

# you can see the message after attaching
docker attach test
# quit from container: Ctrl+p, Ctrl+q

# you can check what's on the stdout without entering the container
docker logs -f test

# start a new bash in the container
docker exec -it test bash

# run ps in the container, you will see there are two bash running
# exit from the container, and the container will continue to run

docker stop test
```

## about docker exec
```
docker run -itd --name test ubuntu sleep 10

# after 10 seconds, it will quit from the bash in the container
docker exec -it ubuntu bash
```

## concepts
1. docker engine
1. docker compose
1. docker swarm

## references
1. [Play with docker classroom](http://training.play-with-docker.com/)
