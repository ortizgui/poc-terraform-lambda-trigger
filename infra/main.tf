provider "aws" {
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
    region = "us-east-1"
}

resource "aws_sqs_queue" "app_default_sqs_queue" {
  name = var.sqs_name
}

resource "aws_sqs_queue_policy" "my_sqs_policy" {
  queue_url = aws_sqs_queue.app_default_sqs_queue.id

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Id": "sqspolicy",
  "Statement": [
    {
      "Sid": "First",
      "Effect": "Allow",
      "Principal": "*",
      "Action": "sqs:SendMessage",
      "Resource": "${aws_sqs_queue.app_default_sqs_queue.arn}"
    }
  ]
}
POLICY
}