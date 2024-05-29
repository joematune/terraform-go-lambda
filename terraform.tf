terraform {
  # We don't need no stinking cloud - local state

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.51.1"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6.2"
    }
    archive = {
      source  = "hashicorp/archive"
      version = "~> 2.4.0"
    }
  }

  required_version = "~> 1.8"
}
