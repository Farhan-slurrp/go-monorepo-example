# service-a/Makefile

SERVICE_NAME=service-b
BINARY=bin/http

.PHONY: build run test clean

build:
	@echo "Building $(SERVICE_NAME)..."
	@mkdir -p bin
	go build -o $(BINARY) ./cmd/http

run:
	@echo "Running $(SERVICE_NAME)..."
	go run ./cmd/http

test:
	@echo "Testing $(SERVICE_NAME)..."
	go test ./...

clean:
	@echo "Cleaning $(SERVICE_NAME)..."
	rm -rf bin
