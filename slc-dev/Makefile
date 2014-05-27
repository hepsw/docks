.PHONY: all build

all: build
	@echo "done"

build: Dockerfile
	docker build --rm --tag=hepsw/docks/slc-dev .

upload: build
	docker push hepsw/docks/slc-dev:latest

