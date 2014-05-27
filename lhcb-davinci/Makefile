## hepsw/lhcb-davinci

.PHONY: all build

REPO := hepsw/lhcb-davinci
TAG := v34r1

all: build
	@echo "done"

build: Dockerfile
	docker build --rm --tag=$(REPO):$(TAG) .
	docker tag --force $(REPO):$(TAG) $(REPO):latest

upload: build
	docker push $(REPO):$(TAG)
	docker push $(REPO):latest


