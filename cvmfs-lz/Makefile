## hepsw/cvmfs-cms

.PHONY: all build

REPO := hepsw/cvmfs-lz
TAG ?= $(shell date +%Y%m%d)

all: build
	@echo "done"

build: Dockerfile
	docker build --rm --tag=$(REPO):$(TAG) .
	docker tag $(REPO):$(TAG) $(REPO):latest

upload: build
	docker push $(REPO):$(TAG)
	docker push $(REPO):latest
