# Hyperledger

## Acronyms
1. DLT	Distributed Ledger Technology

## Getting started

1. Below are the steps to run the *e2e_cli* example.

```
mkdir fabric-sample
cd fabric-sample

curl -sSL https://goo.gl/NIKLiU -o bootstrap.sh
# download the docker images
sh bootstrap.sh

# Generate all the artifacts that includes: 
# org certs, in ./crypto-config
# orderer genesis block, ./channel-artifacts/orderer.genesis.block
# channel configuration transaction, ./channel-artifacts/*.tx
sh generateArtifacts.sh $CH_NAME

# start the environment and run the test
CHANNEL_NAME=mychannel TIMEOUT=1000 docker-compose -f docker-compose-cli.yaml up -d

# stop the environment
docker-compose -f docker-compose-cli.yaml up -d

# after bootstrap, you can also use following scripts to start/stop the env
./network_setup.sh up
./network_setup.sh down

# structure
# OrdererOrgs
#   Oderer
# PeerOrgs
#   Org1
#     peer0 (anchor)
#     peer1
#   Org2
#     peer0 (anchor)
#     peer1
```

2. After the env is booted up, ```./scripts/script.sh``` will be run in container cli automatically,
this is the script which drives the end-to-end test.
Let's find out what are done in this example.

Note: the following operations are run in container ```cli```.
- create channel
- have all peers join the channel
  - peer0.org1
  - peer1.org1
  - peer0.org2
  - peer1.org2
- set the anchor peers for each org in the channel
- install chaincode on peer0.org1 and peer0.org2
- instantiate chaincode on peer0.org2
  - a = 100
  - b = 200
- query on chaincode on peer0.org1
  - a = ? (100)
- invoke on chaincode on peer0.org1
- install chaincode on peer1.ogr2
- query on chaincode on peer1.org2
  - a = ? (90)



## References
1. [Hyperledger](https://www.hyperledger.org/)
1. [Hyperledger Fabric Wiki](https://wiki.hyperledger.org/projects/fabric)
