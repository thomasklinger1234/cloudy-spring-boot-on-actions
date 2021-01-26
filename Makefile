export SHELL := /bin/bash

application/build:
	./mvnw clean package -DskipTests=true

application/test/unit:
	./mvnw clean verify

application/verify:
	echo "running pmd, checkstyle etc"

application: application/build application/test/unit application/verify

docker/build:
	docker build \
		--rm \
		--build-arg GIT_SHA="$${GITHUB_SHA:-latest}" \
		--build-arg GIT_REF="$${GITHUB_REF:-latest}" \
		-f Dockerfile \
		.

docker/push:
	echo "pushing to docker registry..."

docker: docker/build docker/push

infrastructure/deploy:
	echo "deploying infrastructure..."