# Start an HTTP server from a directory, optionally specifying the port
server() {
    local port="${1:-8000}"
    chromium "http://localhost:${port}/"
    python -m http.server ${port}
}

