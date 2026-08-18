#!/bin/bash
echo "=== Running Tests ==="

# Test 1 — check build.sh exists
if [ -f "build.sh" ]; then
  echo "Test 1 PASSED: build.sh exists"
else
  echo "Test 1 FAILED: build.sh missing"
  exit 1
fi

# Test 2 — check pipeline.sh exists
if [ -f "pipeline.sh" ]; then
  echo "Test 2 PASSED: pipeline.sh exists"
else
  echo "Test 2 FAILED: pipeline.sh missing"
  exit 1
fi

# Test 3 — check Dockerfile exists
if [ -f "Dockerfile" ]; then
  echo "Test 3 PASSED: Dockerfile exists"
else
  echo "Test 3 FAILED: Dockerfile missing"
  exit 1
fi

echo "=== All Tests Passed! ==="
exit 0
EOF

# Fix line endings
sed -i 's/\r//' test.sh