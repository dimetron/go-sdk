.PHONY: build/mcp-memory
build/mcp-memory:
	mkdir -p /tmp/mcp/output
	go build -o /tmp/mcp/output/memory ./examples/server/memory

.PHONY: build/sequentialthinking
build/sequentialthinking:
	mkdir -p /tmp/mcp/output
	go build -o /tmp/mcp/output/sequentialthinking ./examples/server/sequentialthinking

.PHONY: build
build:  build/mcp-memory build/sequentialthinking

.PHONY: install
install: build
	cp /tmp/mcp/output/memory $(HOME)/go/bin/mcp-memory
	cp /tmp/mcp/output/sequentialthinking $(HOME)/go/bin/mcp-sequentialthinking