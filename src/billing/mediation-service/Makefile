.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/mediation-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t signalgrid/mediation-service:latest .

docker-run:
	docker run --rm -p 50100:50100 --env-file .env signalgrid/mediation-service:latest
