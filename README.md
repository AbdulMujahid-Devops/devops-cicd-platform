# DevOps CI/CD Platform

A production-style container delivery pipeline using Docker and GitHub Actions. The workflow demonstrates test → build → security scan → image publication with immutable tagging.

## Flow

```text
Commit → Unit Tests → Docker Build → Trivy Scan → Registry → Deploy
```

## Structure

```text
app/              Application code
Dockerfile        Multi-stage container build
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

The workflow uses GitHub Actions permissions with least privilege and avoids storing secrets in source control.
