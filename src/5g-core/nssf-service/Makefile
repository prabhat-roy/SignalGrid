.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/nssf-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t signalgrid/nssf-service:latest .

docker-run:
	docker run --rm -p 50164:50164 --env-file .env signalgrid/nssf-service:latest
