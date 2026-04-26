.PHONY: build test run package docker-build

build:
	mvn -B compile

test:
	mvn -B test

run:
	mvn -B spring-boot:run

package:
	mvn -B package -DskipTests

docker-build: package
	docker build -t signalgrid/sim-service:latest .

docker-run:
	docker run --rm -p 50021:50021 --env-file .env signalgrid/sim-service:latest
