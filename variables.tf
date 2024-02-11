variable "ARM_SECRET" {

}
variable "ARM_SUBSCRIPTION_ID" {

}
variable "ARM_CLIENT_ID" {

}
variable "ARM_TENANT_ID" {

}

variable "mapset" {
  type = map(string)
  default = {
    "Ik" : "Wil-win",
    "NS" : "Will-lose",
    "BB" : "Will-lose"
  }

}