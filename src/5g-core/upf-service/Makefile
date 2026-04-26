.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/upf-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t signalgrid/upf-service:latest .

docker-run:
	docker run --rm -p 50162:50162 --env-file .env signalgrid/upf-service:latest
