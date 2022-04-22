# poc-terraform-lambda-trigger

## Using terraform

To initialize a working directory with **Terraform** configuration files run:

```commandline
terraform init
```

To know all changes will take place, run the command:

```commandline
terraform plan
```

To run the plan use the command:

```commandline
terraform apply
```

To remove everything created by this terraform plan, run:

```commandline
terraform destroy
```

## AWS Credentials

To ignore any changes to the `terraform.tfvars` use git **assume unchanged** command:

```commandline
git update-index --assume-unchanged .\infra\terraform.tfvars
```