# Spring + GitHub Actions Demo

![ci_deployment](https://github.com/thomasklinger1234/cloudy-spring-boot-on-actions/workflows/ci_deployment/badge.svg)

This project demonstrates the usage of GitHub Actions for CI/CD and Spring Boot + Docker.

The demo also includes usage of multiple automations apart from CI/CD such as:

- Generating releases
- Pull request checks
- Dependabot automation to keep your dependencies fresh
- Semantic commits and PRs

Once you cloned this repository, please run the following to ensure that git pre-commit checks are running (declared in `.pre-commit-config.yaml`):

```
pip install pre-commit
pre-commit run --all-files
```

## Usage

- Build: `make application/build`
- Build+Test: `make application/build application/test/unit`
- Build docker container: `make docker/build`
