#Name = var.instance_name  <-- use this in tags in main.tf
variable "instance_name" {
    description = "name of ec2 instance"
    type = string
    default = "bingus"
  
}
