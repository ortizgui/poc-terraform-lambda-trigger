resource "aws_sqs_queue" "app_default_sqs_queue" {
  name = var.sqs_name
}