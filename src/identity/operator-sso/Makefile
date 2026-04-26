.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/operator-sso .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t signalgrid/operator-sso:latest .

docker-run:
	docker run --rm -p 50022:50022 --env-file .env signalgrid/operator-sso:latest
