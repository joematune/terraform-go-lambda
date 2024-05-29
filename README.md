# Terraform Lambda & API Gateway in Go

### Prerequisites

- `terraform` - Recommended installation with [`tfswitch`](https://tfswitch.warrensbox.com/Install/)
- `go` - Recommended installation with [`g` (Go version manager)](https://github.com/stefanmaric/g#single-line-installation)

#### Make & deploy & demo app

1. `make build` - build Go binary for lambda
1. `terraform init` - install TF dependencies
1. `make deploy` - build Go binary, create cloud resources
1. `make post` - post to new endpoint

Clean up (destroy) resources

- `terraform destroy` - remove all resources
