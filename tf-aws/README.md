# Working with aws using Terraform

## Installation

- [follow me](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
- `curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"`
- `unzip awscliv2.zip`
- `sudo ./aws/install`
- to update to latest `sudo ./aws/install --bin-dir /usr/local/bin --install-dir /usr/local/aws-cli --update`
- `aws --version` to confirm installation

## Configure your aws cli

- `aws configure`: I recommend creating a new one for a new machine
  - `AWS_ACCESS_KEY_ID`: IAM > USERS > SECURITY CREDENTIALS
  - `AWS SECRET ACCESS KEY`: same as above
  - `Default Region Name`: closest to you  
  - `Default Output Format`: your choice

### for zsh, to get aws autocompletion

- add this to the end of `~/.zshrc`
  - `export PATH="$PATH:usr/local/bin/aws_completer"`
- `source ~/.zshrc`
- enable auto completion
  - `autoload bashcompinit && bashcompinit`
  - `autoload -Uz compinit && compinit`

  and then `complete -C '/usr/local/bin/aws_completer' aws`
- to run the autocomplete on each new shell add the autoload and complete commands to the .zshrc file

## Commands I ran

- `export AWS_PROFILE=default`
  - to see where I got the name **default** `cat ~/.aws/config`

- `terraform init`
- `terraform fmt`: to format the configuration file to a certain standard for readability and consistency
  - if the configuration file is properly formatted it won't return anything
  - but if it does indeed format the configuration file it will return it's name
- `terraform validate` valid our configuration syntactically also is internally consistent
- `terraform apply` create the infrastructure
  - data can be found in a file called `terraform.tfstate`
  - it holds the IDs and properties of the resources it manages
  - this will help in updating or destroying those resources in future
- `terraform show` inspect the current state
- `terraform state list` to list resource in our project's state
- `terraform destroy` clean or remove the resource created
