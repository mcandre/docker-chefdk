IMAGE=mcandre/docker-chefdk:0.3.5

all: run

chefdk_0.3.5-1_amd64.deb:
	wget https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chefdk_0.3.5-1_amd64.deb

build: Dockerfile chefdk_0.3.5-1_amd64.deb
	docker build -t $(IMAGE) .

run: clean-containers build
	docker run --rm $(IMAGE) knife --version
	docker run --rm $(IMAGE) chef --version
	docker run --rm $(IMAGE) git --version

clean-containers:
	-docker ps -a | grep -v IMAGE | awk '{ print $$1 }' | xargs docker rm -f

clean-images:
	-docker images | grep -v IMAGE | grep $(IMAGE) | awk '{ print $$3 }' | xargs docker rmi -f

clean-layers:
	-docker images | grep -v IMAGE | grep none | awk '{ print $$3 }' | xargs docker rmi -f

clean-installers:
	-rm *.deb

clean: clean-containers clean-images clean-layers clean-installers

publish:
	docker push $(IMAGE)
