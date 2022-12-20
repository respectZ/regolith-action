# regolith-action

A GitHub Action for Regolith Bedrock Addon compiler pipeline.

## Usage

### Pre-requisites

Create a workflow `.yml` file in your `.github/workflows` directory.

### Inputs

| Input          | Description                         | Default   |
| -------------- | ----------------------------------- | --------- |
| `profile`      | Regolith profile to run             | `default` |
| `github_token` | GitHub token to get private filters | None      |

### Example workflow

```yml
name: Example workflow
on: push
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: Bedrock-OSS/regolith-action@v1.0.3
        with:
          profile: default
```
