variable "regions" {
  type = set(string)
}

variable "access_key" {
  type = string
  ephemeral = true
}

variable "secret_key" {
  type = string
  sensitive = true
  ephemeral = true
}

variable "alias" {
  type = string
}

variable "domain" {
  type = string
}
