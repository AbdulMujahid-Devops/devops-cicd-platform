# DevOps CI/CD Platform

> **About:** End-to-end DevOps CI/CD platform using Docker and GitHub Actions to automate testing, container builds, security scanning, immutable image tagging, and delivery workflows.

## What this project demonstrates

This repository demonstrates how application delivery can be automated from a Git commit to a deployable container artifact. The pipeline treats testing, security, and reproducibility as part of the delivery process rather than manual release steps.

### Delivery flow

```text
Developer Commit
      ↓
Unit Tests
      ↓
Docker Build
      ↓
Trivy Security Scan
      ↓
Immutable Image Tag
      ↓
Container Registry
      ↓
Deployment
```

### Key capabilities
- GitHub Actions CI/CD
- Automated Python testing
- Docker containerization
- Multi-stage/non-root container practices
- Container vulnerability scanning
- Immutable image tagging
- Least-privilege workflow permissions
- Separation of build and deployment responsibilities

## Structure

```text
app/              Application code
Dockerfile        Container build definition
.github/workflows/ci.yml
requirements.txt
```

## Local run

```bash
python -m pip install -r requirements.txt
python -m pytest
python app/main.py
```

## Container

```bash
docker build -t analytics-api:local .
docker run --rm -p 8080:8080 analytics-api:local
```

## Why it matters for DevOps

A production delivery platform should provide fast feedback, repeatable builds, security controls, and traceable artifacts. This project brings those concerns together in one automated workflow and provides a foundation for adding environments, approvals, deployment strategies, and cloud registries.
