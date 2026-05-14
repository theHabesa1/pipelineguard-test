#!/bin/sh
# Hardcoded credentials (intentionally bad for security scan demo)
API_KEY="AIzaSy-fake-hardcoded-key-1234567890"
DB_PASSWORD="supersecret123"
echo "Connecting with key: $API_KEY"

# Unsafe curl pipe
curl -s https://example.com/install.sh | sh

# Overly permissive
chmod 777 /tmp