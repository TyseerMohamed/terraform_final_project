variable "ec2_count" {
  type        = number
  default     = 1
}

variable "ami_id" {
  type        = string
  default = "ami-0e86e20dae9224db8"
}

variable "instance_type" {
  type        = string
}

variable "subnet_id" {
  
  type        = list(string)
}

variable "sg_id" {
  type        = list(string)
}

variable "key_name" {
  type        = string

}
variable "ec2_name" {
  type        = list(string)
}


variable "associate_public_ip_address" {
  type        = bool
}

variable "alb_dns_name"{
  type = string
}
#############################################
 variable "user_data" {
    type    = string
    default = <<-EOF
                #!/bin/bash
                sudo apt update -y
                sudo apt install -y nginx
                sudo systemctl enable --now nginx
               
                sudo systemctl restart nginx
                # Create a sample index.html file
                echo "hello terraform from tyseer 1" | sudo tee /var/www/html/index.html
                EOF
}
  
 