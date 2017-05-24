# Get Started, Part 2: Containers

## steps
```
# create the docker image
docker build -t friendlyhello .

# check the image
docker images

# run the app
# hist Ctrl+C to quit
docker run -p 4000:80 friendlyhello

# run the app again in detached mode
docker run -d -p 4000:80 friendlyhello

# check the container
docker ps

# stop the container
docker stop <container-id>

# share the image
docker login
docker tag friendlyhello feici02/friendlyhello:latest
docker push feici02/frinedlyhello:latest

# from now on, you can run above app anywhere
docker run -p 4000:80 feici02/friendlyhello:latest
```

## cheatsheet
```
docker build -t friendlyname .  # Create image using this directory's Dockerfile
docker run -p 4000:80 friendlyname  # Run "friendlyname" mapping port 4000 to 80
docker run -d -p 4000:80 friendlyname         # Same thing, but in detached mode
docker ps                                 # See a list of all running containers
docker stop <hash>                     # Gracefully stop the specified container
docker ps -a           # See a list of all containers, even the ones not running
docker kill <hash>                   # Force shutdown of the specified container
docker rm <hash>              # Remove the specified container from this machine
docker rm $(docker ps -a -q)           # Remove all containers from this machine
docker images -a                               # Show all images on this machine
docker rmi <imagename>            # Remove the specified image from this machine
docker rmi $(docker images -q)             # Remove all images from this machine
docker login             # Log in this CLI session using your Docker credentials
docker tag <image> username/repository:tag  # Tag <image> for upload to registry
docker push username/repository:tag            # Upload tagged image to registry
docker run username/repository:tag                   # Run image from a registry
```
