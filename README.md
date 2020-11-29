# Example Application Repository

This is an application repository to perform *Operations on Pull Request* via an environment repository.
It runs a GitHub Workflow to build a container image on a new release, and triggers a workflow in the environment repository to create a pull request with the new application version.

## Requirements

- Secret: `PERSONAL_ACCESS_TOKEN` to trigger GitHub Workflows in the environment Repository
- Secret: `REGISTRY_USER` for the container image registry repository
- Secret: `REGISTRY_TOKEN` for the container image registry token

## Run the App

```bash
docker build -t app .
docker run -p 8080:8080 app
```
