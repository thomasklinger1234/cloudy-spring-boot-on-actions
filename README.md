# Spring + GitHub Actions Demo

This project demonstrates the usage of GitHub Actions for CI/CD and Spring Boot + Docker.

The demo also includes usage of multiple automations apart from CI/CD such as:

- Generating releases
- Pull request checks
- Dependabot automation to keep your dependencies fresh
- Semantic commits and PRs

## Usage

- Build: `make application/build`
- Build+Test: `make application/build application/test/unit`
- Build docker container: `make docker/build`
