

variable "root_user" {
  default = ""

}

variable "key_manager" {
  default = ""
}

variable "key_user" {
  default = ""
}

variable key_spec {
  default = "SYMMETRIC_DEFAULT"
}

variable enabled {
  default = true
}

variable rotation_enabled  {
  default = true
}

variable kms_alias {
  default = ""
}
