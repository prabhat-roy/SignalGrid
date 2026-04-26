.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/ops-bff .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t signalgrid/ops-bff:latest .

docker-run:
	docker run --rm -p 50005:50005 --env-file .env signalgrid/ops-bff:latest
