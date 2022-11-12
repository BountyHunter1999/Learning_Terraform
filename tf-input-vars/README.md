# Codes I ran

- `terraform apply` will just use the default name
- `terraform apply -var "instance_name=ItsMeAnotherName"` this will update the instance's `Name` tag with the new name
- Setting variable via the command line will not save their values
  - [Customize Terraform Configuration with Variables](https://developer.hashicorp.com/terraform/tutorials/configuration-language/variables)