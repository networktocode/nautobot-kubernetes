
# Get current branch by default
tag := $(shell git rev-parse --abbrev-ref HEAD)

build:
	docker build -t ghcr.io/networktocode/nautobot-kubernetes:$(tag) .

push:
	docker push ghcr.io/networktocode/nautobot-kubernetes:$(tag)
