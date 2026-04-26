.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/pm-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t signalgrid/pm-service:latest .

docker-run:
	docker run --rm -p 50141:50141 --env-file .env signalgrid/pm-service:latest
