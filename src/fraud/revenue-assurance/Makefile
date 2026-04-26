.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/revenue-assurance .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t signalgrid/revenue-assurance:latest .

docker-run:
	docker run --rm -p 50261:50261 --env-file .env signalgrid/revenue-assurance:latest
