variable "key_name" {
  default = "ansible"
}

variable "ingressrules" {
  type = list(number)
  default = [ 22 , 3000 , 9090 , 3001 ]
}

variable "ami" {
  default = "<iam_id>"
}