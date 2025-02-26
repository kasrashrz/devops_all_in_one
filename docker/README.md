### My experience through docker, some important commands & confs

#### Docker-compose file to fire up your docker

```Dockerfile
docker network inspect bridge
docker network create web_net -o com.docker.network.bridge.name=web_net # creates a bridge network for us
```
