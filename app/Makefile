IMAGE_NAME=node-hello
GIT_SHA = $(shell git rev-parse HEAD)
IMAGE_REPO=jasonblanchard/${IMAGE_NAME}
LOCAL_TAG = ${IMAGE_REPO}:latest
REMOTE_TAG = ${IMAGE_REPO}:${GIT_SHA}
TAG=node-hello

build:
	docker build -t ${LOCAL_TAG} .

tag: build
	docker tag ${LOCAL_TAG} ${REMOTE_TAG}

push: tag
	docker push ${REMOTE_TAG}
