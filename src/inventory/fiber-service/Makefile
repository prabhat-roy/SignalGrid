.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/fiber-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t signalgrid/fiber-service:latest .

docker-run:
	docker run --rm -p 50123:50123 --env-file .env signalgrid/fiber-service:latest
