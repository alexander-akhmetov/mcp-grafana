.PHONY: build-image
build-image:
	docker build -t mcp-grafana:latest .

.PHONY: lint
lint:
	go tool -modfile go.tools.mod golangci-lint run

.PHONY: test
test:
	go test ./...

.PHONY: run
	go run ./...