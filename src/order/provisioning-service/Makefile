.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/provisioning-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t signalgrid/provisioning-service:latest .

docker-run:
	docker run --rm -p 50080:50080 --env-file .env signalgrid/provisioning-service:latest
