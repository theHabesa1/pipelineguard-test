# pipelineguard-test

Test repository for PipelineGuard CI/CD pipeline runner.

## Pipeline steps

| Step | Command | Description |
|------|---------|-------------|
| lint | `sh hello.sh` | Print environment info |
| test | `sh test.sh` | Run the test suite |
| build | `sh build.sh` | Produce a build artifact |
# test

## Secrets

This repository contains intentionally leaked secrets for testing PipelineGuard's security scanner.

### Hardcoded secrets found:

| File | Line | Type | Content |
|------|------|------|---------|
| `bad.sh` | 4 | API Key | `AIzaSy-fake-hardcoded-key-1234567890` |
| `bad.sh` | 5 | Password | `supersecret123` |
| `.env` | 1 | MongoDB | `mongodb://root:rootpassword@localhost:27017` |
| `.env` | 2 | Redis | `redis://localhost:6379` |
| `.env` | 3 | RabbitMQ | `amqp://guest:guest@localhost:5672/` |
| `.env` | 4 | JWT Secret | `change-me-to-a-long-random-secret` |
| `.env` | 5 | OpenRouter Key | `sk-or-v1-...` |
| `.env` | 6 | GitHub Secret | `3778c9fdd05f3865f84b5e4e79e55144ce917d0d` |

### Example of insecure patterns:

| File | Line | Pattern |
|------|------|---------|
| `bad.sh` | 10 | Unsafe curl pipe: `curl ... | sh` |
| `bad.sh` | 13 | Overly permissive permissions: `chmod 777` |

These findings are intentionally added to demonstrate the security scanner's detection capabilities.
