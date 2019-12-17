# Route 53

## How to use this repo

- [x] Install [tfswitch](https://warrensbox.github.io/terraform-switcher/) and chose terraform 11
- [x] Install [git](https://gist.github.com/derhuerst/1b15ff4652a867391f03)
- [x] How to use this repo


- In a directory of your choice, clone the github repository :
  
```bash
git clone git@github.com:orlando-pereira/tf-route53.git
```

- Change into the directory :
  
```bash
cd tf-route53.git
```

- use tfswitch to change the version of terraform:
  - this repo uses versions 0.11.14 and 0.11.11

```bash
Use the arrow keys to navigate: ↓ ↑ → ← 
? Select Terraform version: 
  ▸ 0.11.14 *recent
    0.11.11 *recent
    0.12.17 *recent
    0.12.18
↓   0.12.16 
```

- try with version terraform 0.11.11 and aws 1.52.
  
1) tfswitch

```terraform
✔ 0.11.11 *recent
Switched terraform to version "0.11.11" 
```

2) change the aws version as bellow

```terraform
  provider "aws" {
  version = "=  1.52"
  region  = "${var.region}"
}

```

3) terraform init && terraform apply

```terraform
Initializing provider plugins...
- Checking for available provider plugins on https://releases.hashicorp.com...
- Downloading plugin for provider "aws" (1.52.0)...

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
➜  route53 git:(master) ✗ terraform apply

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  + aws_route53_record.www-dev
      id:                               <computed>
      allow_overwrite:                  "true"
      fqdn:                             <computed>
      name:                             "www"
      records.#:                        "1"
      records.458952201:                "dev.example.xt"
      set_identifier:                   "dev"
      ttl:                              "5"
      type:                             "CNAME"
      weighted_routing_policy.#:        "1"
      weighted_routing_policy.0.weight: "10"
      zone_id:                          "${aws_route53_zone.primary.zone_id}"

  + aws_route53_record.www-live
      id:                               <computed>
      allow_overwrite:                  "true"
      fqdn:                             <computed>
      name:                             "www"
      records.#:                        "1"
      records.3746110829:               "live.example.xt"
      set_identifier:                   "live"
      ttl:                              "5"
      type:                             "CNAME"
      weighted_routing_policy.#:        "1"
      weighted_routing_policy.0.weight: "90"
      zone_id:                          "${aws_route53_zone.primary.zone_id}"

  + aws_route53_zone.primary
      id:                               <computed>
      comment:                          "Managed by Terraform"
      force_destroy:                    "false"
      name:                             "example.xt"
      name_servers.#:                   <computed>
      vpc.#:                            <computed>
      vpc_id:                           <computed>
      vpc_region:                       <computed>
      zone_id:                          <computed>


Plan: 3 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_route53_zone.primary: Creating...
  comment:        "" => "Managed by Terraform"
  force_destroy:  "" => "false"
  name:           "" => "example.xt"
  name_servers.#: "" => "<computed>"
  vpc.#:          "" => "<computed>"
  vpc_id:         "" => "<computed>"
  vpc_region:     "" => "<computed>"
  zone_id:        "" => "<computed>"
aws_route53_zone.primary: Still creating... (10s elapsed)
aws_route53_zone.primary: Still creating... (21s elapsed)
aws_route53_zone.primary: Still creating... (31s elapsed)
aws_route53_zone.primary: Creation complete after 33s (ID: Z2E3MYPADIIPTS)
aws_route53_record.www-live: Creating...
  allow_overwrite:                  "" => "true"
  fqdn:                             "" => "<computed>"
  name:                             "" => "www"
  records.#:                        "" => "1"
  records.3746110829:               "" => "live.example.xt"
  set_identifier:                   "" => "live"
  ttl:                              "" => "5"
  type:                             "" => "CNAME"
  weighted_routing_policy.#:        "" => "1"
  weighted_routing_policy.0.weight: "" => "90"
  zone_id:                          "" => "Z2E3MYPADIIPTS"
aws_route53_record.www-dev: Creating...
  allow_overwrite:                  "" => "true"
  fqdn:                             "" => "<computed>"
  name:                             "" => "www"
  records.#:                        "" => "1"
  records.458952201:                "" => "dev.example.xt"
  set_identifier:                   "" => "dev"
  ttl:                              "" => "5"
  type:                             "" => "CNAME"
  weighted_routing_policy.#:        "" => "1"
  weighted_routing_policy.0.weight: "" => "10"
  zone_id:                          "" => "Z2E3MYPADIIPTS"
aws_route53_record.www-dev: Still creating... (10s elapsed)
aws_route53_record.www-live: Still creating... (10s elapsed)
aws_route53_record.www-live: Still creating... (20s elapsed)
aws_route53_record.www-dev: Still creating... (20s elapsed)
aws_route53_record.www-dev: Still creating... (30s elapsed)
aws_route53_record.www-live: Still creating... (30s elapsed)
aws_route53_record.www-live: Creation complete after 38s (ID: Z2E3MYPADIIPTS_www_CNAME_live)
aws_route53_record.www-dev: Creation complete after 38s (ID: Z2E3MYPADIIPTS_www_CNAME_dev)

Apply complete! Resources: 3 added, 0 changed, 0 destroyed.
```

4) tfswitch

```terraform
✔ 0.11.14 *recent
Switched terraform to version "0.11.14" 
```

5) change the aws version as bellow

```terraform
  provider "aws" {
  version = "=  2.38"
  region  = "${var.region}"
}

```

6) terraform init && terraform apply

```terraform
 terraform init

Initializing provider plugins...
- Checking for available provider plugins on https://releases.hashicorp.com...
- Downloading plugin for provider "aws" (2.38.0)...

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
➜  route53 git:(master) ✗ terraform apply
aws_route53_zone.primary: Refreshing state... (ID: Z2E3MYPADIIPTS)
aws_route53_record.www-live: Refreshing state... (ID: Z2E3MYPADIIPTS_www_CNAME_live)
aws_route53_record.www-dev: Refreshing state... (ID: Z2E3MYPADIIPTS_www_CNAME_dev)

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.
```

7) terraform destroy

```terraform
terraform destroy
aws_route53_zone.primary: Refreshing state... (ID: Z2E3MYPADIIPTS)
aws_route53_record.www-live: Refreshing state... (ID: Z2E3MYPADIIPTS_www_CNAME_live)
aws_route53_record.www-dev: Refreshing state... (ID: Z2E3MYPADIIPTS_www_CNAME_dev)

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  - aws_route53_record.www-dev

  - aws_route53_record.www-live

  - aws_route53_zone.primary


Plan: 0 to add, 0 to change, 3 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

aws_route53_record.www-live: Destroying... (ID: Z2E3MYPADIIPTS_www_CNAME_live)
aws_route53_record.www-dev: Destroying... (ID: Z2E3MYPADIIPTS_www_CNAME_dev)
aws_route53_record.www-live: Still destroying... (ID: Z2E3MYPADIIPTS_www_CNAME_live, 10s elapsed)
aws_route53_record.www-dev: Still destroying... (ID: Z2E3MYPADIIPTS_www_CNAME_dev, 10s elapsed)
aws_route53_record.www-dev: Still destroying... (ID: Z2E3MYPADIIPTS_www_CNAME_dev, 20s elapsed)
aws_route53_record.www-live: Still destroying... (ID: Z2E3MYPADIIPTS_www_CNAME_live, 20s elapsed)
aws_route53_record.www-live: Still destroying... (ID: Z2E3MYPADIIPTS_www_CNAME_live, 30s elapsed)
aws_route53_record.www-dev: Still destroying... (ID: Z2E3MYPADIIPTS_www_CNAME_dev, 30s elapsed)
aws_route53_record.www-dev: Destruction complete after 38s
aws_route53_record.www-live: Destruction complete after 38s
aws_route53_zone.primary: Destroying... (ID: Z2E3MYPADIIPTS)
aws_route53_zone.primary: Destruction complete after 1s

Destroy complete! Resources: 3 destroyed.

```
