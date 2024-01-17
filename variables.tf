variable "key_name" {
  default = "ansible"
}

variable "ingressrules" {
  type = list(number)
  default = [ 22 , 3000 , 9090 , 3001 ]
}

variable "ami" {
  default = "ami-03f4878755434977f"
}