# docker-chefdk - a Docker container for chefdk

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-chefdk/

# EXAMPLE

```
$ make
docker run --rm mcandre/docker-chefdk:0.9.0 knife --version
Chef: 12.5.1
docker run --rm mcandre/docker-chefdk:0.9.0 chef --version
Chef Development Kit Version: 0.9.0
chef-client version: 12.5.1
berks version: 4.0.1
kitchen version: 1.4.2
docker run --rm mcandre/docker-chefdk:0.9.0 git --version
git version 1.9.1
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Optional

* [make](http://www.gnu.org/software/make/)

## Debian/Ubuntu

```
$ sudo apt-get install docker.io build-essential
```

## RedHat/Fedora/CentOS

```
$ sudo yum install docker-io
```

## non-Linux

* [VirtualBox](https://www.virtualbox.org/)
* [Docker Toolbox](https://www.docker.com/toolbox)

### Mac OS X

* [Xcode](http://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12)
* [Homebrew](http://brew.sh/)
* [brew-cask](http://caskroom.io/)

```
$ brew cask install dockertoolbox
```

### Windows

* [Chocolatey](https://chocolatey.org/)

```
> chocolatey install virtualbox make
```

* [DockerToolbox-1.8.2c.exe](https://github.com/docker/toolbox/releases/download/v1.8.2c/DockerToolbox-1.8.2c.exe)
