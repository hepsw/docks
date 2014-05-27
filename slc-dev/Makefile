.PHONY: all build

all: build
	@echo "done"

build: Dockerfile
	docker build --rm --tag=hepsw/slc-dev .

upload: build
	docker push hepsw/slc-dev:latest

