.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/m2m-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t signalgrid/m2m-service:latest .

docker-run:
	docker run --rm -p 50200:50200 --env-file .env signalgrid/m2m-service:latest
