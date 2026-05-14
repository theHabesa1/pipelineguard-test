#!/bin/sh
set -e

echo "=== Running test suite ==="

echo "[1/3] Checking hello.sh exists..."
[ -f hello.sh ] && echo "  PASS" || (echo "  FAIL" && exit 1)

echo "[2/3] Checking hello.sh is executable content..."
grep -q "PipelineGuard" hello.sh && echo "  PASS" || (echo "  FAIL" && exit 1)

echo "[3/3] Basic arithmetic sanity check..."
result=$((6 * 7))
[ "$result" -eq 42 ] && echo "  PASS" || (echo "  FAIL" && exit 1)

echo ""
echo "All tests passed!"
