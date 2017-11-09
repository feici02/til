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

## docker save/load
```
docker save -o <save image to path> <image name>
# Then copy the image to a new system with tools such as scp.

# After that you will have to load the image into docker:
docker load -i <path to image tar file>
```

## Add user to the docker group
When you run `docker version`, if you see following error:
```
Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Get http://%2Fvar%2Frun%2Fdocker.sock/v1.27/version: dial unix /var/run/docker.sock: connect: permission denied
```
It means that your current your user are not in the `docker` group. You can run following command to fix this:
```
sudo usermod -a -G docker $USER
```
After running above command, you need to log out and log in to make it take effect. Now, you can run the `docker version` command successfully. If you run `id` command, group `docker` is listed in your groups.

## Using docker behind a company proxy
### 1. Configure Docker
Configure */etc/default/docker* (ubuntu) so that new images can be pulled
### 2. Options during build time
If *apt-get install* is used in your *Dockerfile*, which also requires the access to proxy, you should run "docker build" like this:
```
$ docker build -t <image name> \
    --build-arg http_proxy=http://proxy.company.com:80 .
```
It can also be set in the Dockerfile like this:
```
ENV http_proxy "http://proxy.company.com:80"
ENV https_proxy "http://proxy.company.com:80"
RUN apt-get update && apt-get install -y curl
ENV http_proxy ""
ENV https_proxy ""
```


## concepts
1. docker engine
1. docker compose
1. docker swarm

## references
1. [Play with docker classroom](http://training.play-with-docker.com/)
