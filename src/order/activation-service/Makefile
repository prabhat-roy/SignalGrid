.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/activation-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t signalgrid/activation-service:latest .

docker-run:
	docker run --rm -p 50081:50081 --env-file .env signalgrid/activation-service:latest
