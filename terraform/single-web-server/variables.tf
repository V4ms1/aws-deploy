# ---------------------------------------------------------------------------------------------------------------------
# ENVIRONMENT VARIABLES
# Define these secrets as environment variables
# ---------------------------------------------------------------------------------------------------------------------

##Generate from here (https://console.aws.amazon.com/iam/home?#/security_credential)
##rootkey.csv
variable "access_key" {  default="XXXXXXXXXXXXXXXXXXXXXXXXXXXX"  }
variable "secret_key" {  default="XXXXXXXXXXXXXXXXXXXXXXXXXXXX"  }
variable "key_name" {  default="aws_key_new"  }


# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# ---------------------------------------------------------------------------------------------------------------------

variable "region" {
  default = "us-west-2"
}

# Ubuntu Server 16.04 LTS (HVM), SSD Volume Type - ami-1ee65166  64bit
# Ubuntu Server 16.04 LTS (HVM),EBS General Purpose (SSD) Volume Type. Support available from Canonical 
variable "amazon_machine_image" {
  default = "ami-1ee65166"
}

# https://aws.amazon.com/ec2/instance-types/
# They have varying combinations of CPU, memory, storage, and networking capacity, and give you the flexibility to choose the appropriate mix of resources for your applications
# t2.micro is a free instance (General purpose)
# t2.micro (Variable ECUs, 1 vCPUs, 2.5 GHz, Intel Xeon Family, 1 GiB memory, EBS only)
variable "instance_type" {
  default = "t2.micro"
}


variable "server_port" {
  description = "The port the server will use for HTTP requests"
  default = 8080
}


variable "security_group_web" { default = "sg-3a6c8745" }
variable "security_group_tomcat" { default = "sg-c96e85b6" }
variable "security_group_ssh" { default = "sg-c9618ab6" }
variable "security_group_mysql" { default = "sg-9813e9e7" }

