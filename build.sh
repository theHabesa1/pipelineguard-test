#!/bin/sh
set -e

echo "=== Build step ==="
echo "Simulating artifact creation..."
mkdir -p dist
echo "build-$(date +%s)" > dist/version.txt
echo "Build artifact written to dist/version.txt: $(cat dist/version.txt)"
echo "Build complete!"
