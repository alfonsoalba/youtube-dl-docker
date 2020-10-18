USERID := $(shell id -u)

build: export DOCKER_BUILDKIT = 1
build:
	docker image build --build-arg USERID=$(USERID) -t youtube-dl .  

clean:
	docker image rm youtube-dl
