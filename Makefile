FROM := nextcloud:fpm
IMAGE := lazyfrosch/nextcloud-cron:fpm

.PHONY: dep

build: dep
	docker build --rm -t $(IMAGE) .

all: build push

dep:
	docker pull $(FROM)

push:
	docker push $(IMAGE)
