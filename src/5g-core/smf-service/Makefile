.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/smf-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t signalgrid/smf-service:latest .

docker-run:
	docker run --rm -p 50161:50161 --env-file .env signalgrid/smf-service:latest
