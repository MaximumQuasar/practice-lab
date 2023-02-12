
variable "primary-region"  {
  type = object({
    vpc-id  = optional(string)
    vpc-cidr = string
    subnet-id = optional(string)
    subnet-cidr = string
    subnet-az = string
  })
}

variable "secondary-region"  {
  type = object({
    vpc-id  = optional(string)
    vpc-cidr = string
    subnet-id = optional(string)
    subnet-cidr = string
    subnet-az = string
  })
}