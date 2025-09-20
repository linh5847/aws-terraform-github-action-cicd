Our main goal for this exercise to achive a GitHub Action CI/CD pipeline for terraform IaC to be deployed on AWS cloud infrastructure automatically with a team can works in parallel and viewing code via a pull request and merge into the standard git branch that is agreeing within the team and business management board.

It is also immportant to have a brief read through the **.github/workflows README** file for understanding of how to operate the multiple branches with multiple environment purposes.
<<<<<<< HEAD
=======

The CI/CD pipeline for IaC has incorporated with TFLint, TFSec and checkov. Each of these security scanning tools is unique and to skip particular code will required as follow.

checkov skip
```
resource "aws_vpc" "vpc" {
  #checkov:skip=CKV2_AWS_11: no flow log is neededq
  count                = var.enabled == true ? 1 : 0
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true
}
```

TFSec skip
```
resource "aws_security_group_rule" "my-rule" {
    type = "ingress"
    #tfsec:ignore:aws-vpc-no-public-ingress-sgr
    cidr_blocks = ["0.0.0.0/0"]
}

or multiple rules
#tfsec:ignore:aws-s3-enable-bucket-encryption tfsec:ignore:aws-s3-enable-bucket-logging
resource "aws_s3_bucket" "my-bucket" {
  bucket = "foobar"
  acl    = "private"
}
```

TFLint skip
```
resource "aws_instance" "foo" {
    # tflint-ignore: aws_instance_invalid_type
    instance_type = "t1.2xlarge"
}
```
>>>>>>> 38bf508631bd28aaaef2355b9ac206fee9d9064a

## Instruction
[Link to instruction in INSTRUCTION.md](INSTRUCTION.md)
