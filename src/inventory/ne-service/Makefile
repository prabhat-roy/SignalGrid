.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/ne-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t signalgrid/ne-service:latest .

docker-run:
	docker run --rm -p 50122:50122 --env-file .env signalgrid/ne-service:latest
