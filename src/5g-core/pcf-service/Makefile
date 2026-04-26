.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/pcf-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t signalgrid/pcf-service:latest .

docker-run:
	docker run --rm -p 50163:50163 --env-file .env signalgrid/pcf-service:latest
