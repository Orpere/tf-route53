
- [x] Install [tfswitch](https://warrensbox.github.io/terraform-switcher/) and chose terraform 11
- [x] Install [git](https://gist.github.com/derhuerst/1b15ff4652a867391f03)
- [x] How to use this repo

## How to use this repo

- In a directory of your choice, clone the github repository :
  
```bash
git clone git@github.com:orlando-pereira/tf-route53.git
```

- Change into the directory :
  
```bash
cd tf-route53.git
```

- edit the main.tf and change the  provider version:
   - this repo uses versions 2.38  and 1.52
  
```terraform
  provider "aws" {
  version = "~> 2.38"
  region  = "${var.region}"
}

```

- use tfswitch to change the version of terraform:
  - this repo uses versions 0. 11.14 and 0.11.11

```bash
Use the arrow keys to navigate: ↓ ↑ → ← 
? Select Terraform version: 
  ▸ 0.11.14 *recent
    0.11.11 *recent
    0.12.17 *recent
    0.12.18
↓   0.12.16 
```

- terraform apply and you can log into your aws console and check the Dns records, independent of the versions of terraform or provider the terraform configuration will behave in the same way. Please feel free to change versions and confirm

```terraform
terraform apply
```

- to wipe the records

```terraform
terraform destroy
```
