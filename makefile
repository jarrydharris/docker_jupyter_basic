include .env

build:
	docker build . --tag $(IMAGE_TAG) --build-arg JUPYTER_PORT=$(JUPYTER_PORT)

run:
	docker run -p $(JUPYTER_PORT):$(JUPYTER_PORT) $(IMAGE_TAG) 

.PHONY: build run