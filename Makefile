NAME ?= opensips-cp
OPENSIPS_CP_DOCKER_TAG ?= latest
OPENSIPS_CP_VERSION ?= master

all: build start

.PHONY: build start
build:
	docker build \
		--no-cache \
		--build-arg OPENSIPS_CP_VERSION="$(OPENSIPS_CP_VERSION)" \
		--tag="opensips/opensips-cp:$(OPENSIPS_CP_DOCKER_TAG)" \
		--rm \
		.

start:
	docker run -p 80:80 -d --name $(NAME) opensips/opensips-cp:$(OPENSIPS_CP_DOCKER_TAG)
