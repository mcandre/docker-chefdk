# docker-chefdk - a Docker container for chefdk

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-chefdk/

# EXAMPLE

```
$ make
docker run --rm mcandre/docker-chefdk:latest knife --version
Chef: 12.5.1
docker run --rm mcandre/docker-chefdk:latest chef --version
Chef Development Kit Version: 0.9.0
chef-client version: 12.5.1
berks version: 4.0.1
kitchen version: 1.4.2
docker run --rm mcandre/docker-chefdk:latest git --version
git version 1.9.1
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Optional

* [make](http://www.gnu.org/software/make/)
* [Node.js](https://nodejs.org/en/) (for dockerlint)
