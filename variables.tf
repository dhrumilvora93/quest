variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "ExampleAppServerInstance"
}

variable "server_port" {
  description = "The port the server will use for HTTP requests"
  default = 8080
}

variable "elb_name" {
  description = "Value of the Name tag for ELB"
  default = "QuestAppELB"
}

variable "ami_id" {
  description = "AMI to be used"
}

variable "sg_id" {
  description = "Security group id"
}

variable "sn_id" {
  description = "Subnet id"
}