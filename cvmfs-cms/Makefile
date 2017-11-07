## hepsw/cvmfs-cms

.PHONY: all build

REPO := hepsw/cvmfs-cms
TAG ?= $(shell date +%Y%m%d)

all: build
	@echo "done"

build: Dockerfile
	docker build --rm --tag=$(REPO):$(TAG) .
	docker tag $(REPO):$(TAG) $(REPO):latest

build-cc7: Dockerfile-cc7
	docker build --rm --tag=$(REPO)-cc7:$(TAG) --file Dockerfile-cc7 .
	docker tag $(REPO)-cc7:$(TAG) $(REPO)-cc7:latest

upload: build
	docker push $(REPO):$(TAG)
	docker push $(REPO):latest

upload-cc7: build-cc7
	docker push $(REPO)-cc7:$(TAG)
	docker push $(REPO)-cc7:latest
