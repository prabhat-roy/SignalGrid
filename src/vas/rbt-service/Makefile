.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/rbt-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t signalgrid/rbt-service:latest .

docker-run:
	docker run --rm -p 50322:50322 --env-file .env signalgrid/rbt-service:latest
