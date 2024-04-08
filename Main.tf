terraform {
	required_providers {
		aws = {
			source = "hashicorp/aws"
		}
	}

	backend "remote" {
		hostname = "app.terraform.io"
		organization = "eccentricweb"

		workspaces {
			name = "ElasticBeanStalk"
		}
	}
}

provider "aws" {
	region = "ap-south-1"
}
