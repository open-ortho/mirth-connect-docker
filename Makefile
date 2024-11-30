# Makefile for building Docker image

# Variables
IMAGE_NAME := mirth-connect
TAG := latest

# Default target
.PHONY: all
all: build

# Build Docker image using docker-compose
.PHONY: build
build:
	docker compose build --force-rm --no-cache --pull --parallel

# Push Docker image to registry
.PHONY: push
push:
	docker push $(IMAGE_NAME):$(TAG)

# Clean up Docker images
.PHONY: clean
clean:
	docker rmi $(IMAGE_NAME):$(TAG)