terraform {
    backend "s3" {
        bucket = "prj-terra-s3-bucket" #insert your s3 buckt name
        key    = "mfg/terraform.tfstate"
        region     = "us-east-1"
    }
}
