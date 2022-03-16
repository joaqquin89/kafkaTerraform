terraform {
  required_providers {
    kafka = {
      source = "Mongey/kafka"
      version = "0.4.2"
    }
    timeconvert = {
      source = "joaqquin89/timeconvert"
      version = "1.0.0"
    }
  }
}

provider "kafka" {
  bootstrap_servers = var.brokers["cl-staging-east"]
  skip_tls_verify   = false
  tls_enabled = false
}