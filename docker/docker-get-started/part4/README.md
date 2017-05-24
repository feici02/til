# Get Started, Part 4: Swarms

## concepts
1. swarm: a group of machines that are running Docker and have been joined into a cluster
2. nodes: machines in a swarm
3. swarm manager: authorize other machines to join the swarm
4. worker: provide capacity in the swarm

## steps
```
# create two docker machines
docker-machine create --driver virtualbox myvm1
docker-machine create --driver virtualbox myvm2

# create two docker machines after the corporate proxy
docker-machine create -d virtualbox \
  --engine-env HTTP_PROXY=http://cn-proxy.jp.oracle.com:80 \
  --engine-env HTTPS_PROXY=https://cn-proxy.jp.oracle.com:80 \
  myvm1
docker-machine create -d virtualbox \
  --engine-env HTTP_PROXY=http://cn-proxy.jp.oracle.com:80 \
  --engine-env HTTPS_PROXY=https://cn-proxy.jp.oracle.com:80 \
  myvm2

# check the newly created machines
docker-machine ls

# instruct myvm1 to become the swarm manager
# the command to joni other machines to this swarm will be output to the terminal
docker-machine ssh myvm1 "docker swarm init --advertise-addr 192.168.99.100:2377"

# add myvm2 to this swarm as a worker
docker-machine ssh myvm2 "docker swarm join \
--token <token> \
<ip>:<port>"

# copy docker-compose.yml to myvm1
docker-machine scp docker-compose.yml myvm1:~

# deploy the app as in previous part
docker-machine ssh myvm1 "docker stack deploy -c docker-compose.yml getstartedlab"

# the containers have been distributed between myvm1 and myvm2
docker-machine ssh myvm1 "docker stack ps getstartedlab"

# now you can access the app by the IP of either myvm1 or myvm2
```

## cheatsheet
```
docker-machine create --driver virtualbox myvm1 # Create a VM (Mac, Win7, Linux)
docker-machine create -d hyperv --hyperv-virtual-switch "myswitch" myvm1 # Win10
docker-machine env myvm1                # View basic information about your node
docker-machine ssh myvm1 "docker node ls"         # List the nodes in your swarm
docker-machine ssh myvm1 "docker node inspect <node ID>"        # Inspect a node
docker-machine ssh myvm1 "docker swarm join-token -q worker"   # View join token
docker-machine ssh myvm1   # Open an SSH session with the VM; type "exit" to end
docker-machine ssh myvm2 "docker swarm leave"  # Make the worker leave the swarm
docker-machine ssh myvm1 "docker swarm leave -f" # Make master leave, kill swarm
docker-machine start myvm1            # Start a VM that is currently not running
docker-machine stop $(docker-machine ls -q)               # Stop all running VMs
docker-machine rm $(docker-machine ls -q) # Delete all VMs and their disk images
docker-machine scp docker-compose.yml myvm1:~     # Copy file to node's home dir
docker-machine ssh myvm1 "docker stack deploy -c <file> <app>"   # Deploy an app
```
