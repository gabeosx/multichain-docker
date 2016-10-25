# Multichain-Docker

This is a set of 3 Docker images that form a small [MultiChain](http://www.multichain.com/) cluster. 

#### Master node

This is the first server in the cluster. The default configuration in the `docker-compose.yml` file is to make it publicly accessible. This greatly eases the integration with other nodes for testing purposes, but should not be used in production.

### Slave node

Connects to the master node and performs validation. None of the ports are accessible to the host by default.

### Explorer node

Runs the [MultiChain Explorer](https://github.com/MultiChain/multichain-explorer) web UI, which allows you to inspect the blockchain from a browser. This also has a local MultiChain instance, which is required to be on the same node as the Explorer.

### Scripts

There are two Bash scripts that help build the environment:

* `multichain-explore/launchExplorer.sh` - Creates a new chain and configures it based on environment variables provided in the yml script
* `multichain-explore/launchExplorer.sh` - Creates an instance of MultiChain, joins it to the master, and configures / launches the MultiChain Explorer.


### Running

```sh
$ docker-compose up -d
```

