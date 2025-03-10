## My experience through docker swarm, some important commands & confs

### Managing swarm

```bash
$ docker node ls
$ docker swarm init
$ docker swarm join-token --quiet
$ docker node promote NODE_X # promote a node to become manager in maintenance mode
$ docker node promote NODE_X # demote a node
```

### Updates

The `docker node update` command could update a nodes status or assign any labels to a specific node, help you better handle the node in maintenance mode etc.

```bash
$ docker node update --availability drain NODE_X # drain a node for maintenance mode
$ docker node update --availability active NODE_X # active a node to get back to the cluster
$ docker node update --label-add foo
$ docker node update --label-add A=B
$ docker node inspect self --pretty
```

### Service & Stack

The `service` command is a way of launching containers that take advantage of the Swarm cluster. Let's look at launching a really basic single-container service on our Swarm cluster.

```bash
$ docker service create --name web --publish 8080:80 nginx # creates a service and bring it up
$ docker service inspect SERVICE_NAME --pretty
$ docker service logs SERVICE_NAME
```

`Stacks` are Swarm’s way of managing multiple services defined in a single file.

```bash
$ docker stack deploy -c docker-compose.yml myapp # deploy our program using compose file
```
