variable "regions" {
  type = string
  description = "My AWS Region"
  default = "us-west-2"
}

variable "tags" {
  type  = object({
    owner         = string
    env           = string
  })
  default = {
    owner         = "igors"
    env           = "lab-terraform-template-scanner"
   }
}