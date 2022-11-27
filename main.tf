module "vpc" {
    source = "git::https://github.com/aws-clouddevops/tf-module-vpc.git?ref=vmain"
}

# Always the source attribute in terraform module can not be parameterized

# if it can not be handled or parameterized the source, how are we going to tell, fetch from x brand and when branches are dynamic
