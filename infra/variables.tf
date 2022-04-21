variable "access_key" {
        description = "Access key of AWS IAM user"
}

variable "secret_key" {
        description = "Secret key of AWS IAM user"
}

variable "sqs_name" {
        description = "Name of the sqs queue to be created."
        default = "event-processor-sqs"
}