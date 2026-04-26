.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/rap-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t signalgrid/rap-service:latest .

docker-run:
	docker run --rm -p 50181:50181 --env-file .env signalgrid/rap-service:latest
