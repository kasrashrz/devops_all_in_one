## My experience through docker swarm, some important commands & confs

#### most used admin commands

```bash
$ docker node ls
$ docker swarm init
$ docker swarm join-token --quiet
$ docker service create --name web --publish 8080:80 nginx # creates a service and bring it up
$ docker node promote NODE_X

```
