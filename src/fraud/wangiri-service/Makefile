.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/wangiri-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t signalgrid/wangiri-service:latest .

docker-run:
	docker run --rm -p 50264:50264 --env-file .env signalgrid/wangiri-service:latest
