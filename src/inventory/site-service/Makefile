.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/site-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t signalgrid/site-service:latest .

docker-run:
	docker run --rm -p 50121:50121 --env-file .env signalgrid/site-service:latest
