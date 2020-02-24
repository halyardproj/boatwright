.PHONY: list

VERSION ?= latest
SERVICE ?= boatwright
WORKDIR ?= /go/src/halyard/


list :
	@grep '^[^#[:space:]].*:' Makefile
build_docker_compose :
	docker-compose -p ${SERVICE} build
build_image :
	docker build -t ${SERVICE} .
kube_command : 
	kubectl version
help : build_image
	docker run --rm -v ${PWD}:${WORKDIR}${SERVICE} help