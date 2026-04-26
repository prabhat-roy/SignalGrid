.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/usage-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t signalgrid/usage-service:latest .

docker-run:
	docker run --rm -p 50222:50222 --env-file .env signalgrid/usage-service:latest
