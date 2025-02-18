# tflint-all-in-one

![Semantic Release](https://github.com/infinite-automations/tflint-all-in-one/actions/workflows/test-and-release.yml/badge.svg)

Run common TFLint commands in a single GitHub action

## Usage

```yaml
name: "Lint"

on:
  push:
    branches: ["main"]
  pull_request:
    branches: ["main"]

jobs:
  lint:
    name: Lint
    runs-on: ubuntu-latest    
    steps:
      - name: Checkout
        uses: actions/checkout@v4
      - name: Lint Terraform Code
        uses: "infinite-automations/tflint-all-in-one@v1.0.1"
        with:
          directory: "./terraform"
```

## Inputs

| Input Name | Description | Required | Default |
| --- | --- | --- | --- |
| version | The version of TFLint to use | false | latest |
| directory | The directory where the Terraform configuration files are located | false | . |
