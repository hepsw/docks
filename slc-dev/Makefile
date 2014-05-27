.PHONY: all build

all: build
	@echo "done"

build: Dockerfile
	docker build --rm --tag=binet/slc-dev .

upload: build
	docker push binet/slc-dev:latest

