resource "timeconvert_milliseconds" "retentions" {
    time = var.retentions
}

resource "timeconvert_milliseconds" "segment" {
    time = var.segment
}

resource "timeconvert_milliseconds" "delete_retentions" {
    time = var.delete_retentions
}

resource "kafka_topic" "example_jjachurachavez" {
  name               = "example_jjachurachavez"
  replication_factor = 2
  partitions         = 2

  config = {
    "retention.ms"     = "${timeconvert_milliseconds.retentions.ms}"
    "delete.retention.ms" = "${timeconvert_milliseconds.delete_retentions.ms}"
    "segment.ms" = "${timeconvert_milliseconds.segment.ms}"
    "retention.bytes" = "${var.retention_bytes}"
  }
}
