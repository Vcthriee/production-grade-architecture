

### Example `backend.tf`

terraform {
  backend "s3" {
    bucket       = "vcthriee-terraform-states"
    key          = "network/vpc.tfstate"
    region       = "af-south-1"
    use_lockfile = true
    encrypt      = true
  }
}

