variable "number_of_partitions" {
    default = "2"
}

variable "retentions" {
    #default = "259200000"
}

variable "segment" {
    #default = "86400000"
}

variable "delete_retentions" {
    #default = "86400000"
}

variable "retention_bytes" {}

variable "brokers" {
  type = "map"
  default = {
    "cl-staging-east" =  ["NODE1:31400","NODE2:31401","NODE3:31402"]
  }
}