
C:\Aakash imp documents\AWS Devops\terraform MAIN\ec2instance_all_details>terraform plan
aws_instance.no: Refreshing state... [id=i-0f142df9966445af1]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  ~ update in-place

Terraform will perform the following actions:

  # aws_instance.no will be updated in-place
  ~ resource "aws_instance" "no" {
        id                                   = "i-0f142df9966445af1"
      ~ tags                                 = {
          ~ "Name" = "example_instance" -> "bingus"
        }
      ~ tags_all                             = {
          ~ "Name" = "example_instance" -> "bingus"
        }
        # (30 unchanged attributes hidden)

        # (7 unchanged blocks hidden)
    }

Plan: 0 to add, 1 to change, 0 to destroy.

───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if
you run "terraform apply" now.

C:\Aakash imp documents\AWS Devops\terraform MAIN\ec2instance_all_details>terraform apply
aws_instance.no: Refreshing state... [id=i-0f142df9966445af1]s

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  ~ update in-place

Terraform will perform the following actions:

  # aws_instance.no will be updated in-place
  ~ resource "aws_instance" "no" {
        id                                   = "i-0f142df9966445af1"
      ~ tags                                 = {
          ~ "Name" = "example_instance" -> "bingus"
        }
      ~ tags_all                             = {
          ~ "Name" = "example_instance" -> "bingus"
        }
        # (30 unchanged attributes hidden)

        # (7 unchanged blocks hidden)
    }

Plan: 0 to add, 1 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_instance.no: Modifying... [id=i-0f142df9966445af1]
aws_instance.no: Modifications complete after 1s [id=i-0f142df9966445af1]

Apply complete! Resources: 0 added, 1 changed, 0 destroyed.

C:\Aakash imp documents\AWS Devops\terraform MAIN\ec2instance_all_details>terraform destroy
╷
│ Error: configuring Terraform AWS Provider: error validating provider credentials: retrieving caller identity from STS: operation error STS: GetCallerIdentity, https response error StatusCode: 403, RequestID: 095c879f-edc7-42b8-83a8-32d089039a0d, api error InvalidClientTokenId: The security token included in the request is invalid.
│
│   with provider["registry.terraform.io/hashicorp/aws"],
│   on main.tf line 12, in provider "aws":
│   12: provider "aws" {
│
╵

C:\Aakash imp documents\AWS Devops\terraform MAIN\ec2instance_all_details>terraform destroy
aws_instance.no: Refreshing state... [id=i-0f142df9966445af1]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  - destroy

Terraform will perform the following actions:

  # aws_instance.no will be destroyed
  - resource "aws_instance" "no" {
      - ami                                  = "ami-0e742cca61fb65051" -> null
      - arn                                  = "arn:aws:ec2:ap-south-1:417481844170:instance/i-0f142df9966445af1" -> null
      - associate_public_ip_address          = true -> null
      - availability_zone                    = "ap-south-1a" -> null
      - cpu_core_count                       = 1 -> null
      - cpu_threads_per_core                 = 1 -> null
      - disable_api_stop                     = false -> null
      - disable_api_termination              = false -> null
      - ebs_optimized                        = false -> null
      - get_password_data                    = false -> null
      - hibernation                          = false -> null
      - id                                   = "i-0f142df9966445af1" -> null
      - instance_initiated_shutdown_behavior = "stop" -> null
      - instance_state                       = "running" -> null
      - instance_type                        = "t2.micro" -> null
      - ipv6_address_count                   = 0 -> null
      - ipv6_addresses                       = [] -> null
      - monitoring                           = false -> null
      - placement_partition_number           = 0 -> null
      - primary_network_interface_id         = "eni-0e6ce9a5b45a7f373" -> null
      - private_dns                          = "ip-172-31-44-210.ap-south-1.compute.internal" -> null
      - private_ip                           = "172.31.44.210" -> null
      - public_dns                           = "ec2-3-110-172-64.ap-south-1.compute.amazonaws.com" -> null
      - public_ip                            = "3.110.172.64" -> null
      - secondary_private_ips                = [] -> null
      - security_groups                      = [
          - "default",
        ] -> null
      - source_dest_check                    = true -> null
      - subnet_id                            = "subnet-021f9f68840571383" -> null
      - tags                                 = {
          - "Name" = "bingus"
        } -> null
      - tags_all                             = {
          - "Name" = "bingus"
        } -> null
      - tenancy                              = "default" -> null
      - user_data_replace_on_change          = false -> null
      - vpc_security_group_ids               = [
          - "sg-0af3479cdd4382b34",
        ] -> null

      - capacity_reservation_specification {
          - capacity_reservation_preference = "open" -> null
        }

      - credit_specification {
          - cpu_credits = "standard" -> null
        }

      - enclave_options {
          - enabled = false -> null
        }

      - maintenance_options {
          - auto_recovery = "default" -> null
        }

      - metadata_options {
          - http_endpoint               = "enabled" -> null
          - http_put_response_hop_limit = 1 -> null
          - http_tokens                 = "optional" -> null
          - instance_metadata_tags      = "disabled" -> null
        }

      - private_dns_name_options {
          - enable_resource_name_dns_a_record    = false -> null
          - enable_resource_name_dns_aaaa_record = false -> null
          - hostname_type                        = "ip-name" -> null
        }

      - root_block_device {
          - delete_on_termination = true -> null
          - device_name           = "/dev/xvda" -> null
          - encrypted             = false -> null
          - iops                  = 100 -> null
          - tags                  = {} -> null
          - throughput            = 0 -> null
          - volume_id             = "vol-02fd11be4d0ae61c7" -> null
          - volume_size           = 8 -> null
          - volume_type           = "gp2" -> null
        }
    }

Plan: 0 to add, 0 to change, 1 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

aws_instance.no: Destroying... [id=i-0f142df9966445af1]
aws_instance.no: Still destroying... [id=i-0f142df9966445af1, 10s elapsed]
aws_instance.no: Still destroying... [id=i-0f142df9966445af1, 20s elapsed]
aws_instance.no: Still destroying... [id=i-0f142df9966445af1, 30s elapsed]
aws_instance.no: Destruction complete after 31s

Destroy complete! Resources: 1 destroyed.

C:\Aakash imp documents\AWS Devops\terraform MAIN\ec2instance_all_details>
