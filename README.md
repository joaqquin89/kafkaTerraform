### This repo contain an example using terraform and kafka

this example is using 2 provider :

    - kafka terraform provider
    - timeconvert terraform provider

the idea is to declare the topics in the next way

        resource "kafka_topic" "example_topics" {
        name               = "example_topics"
        replication_factor = 2
        partitions         = 2

            config = {
                "retention.ms"     = "${timeconvert_milliseconds.retentions.ms}"
                "delete.retention.ms" = "${timeconvert_milliseconds.delete_retentions.ms}"
                "segment.ms" = "${timeconvert_milliseconds.segment.ms}"
                "retention.bytes" = "${var.retention_bytes}"
            }
        }
