module "sqs_queue" {
  source  = "terraform-aws-modules/sqs/aws"
  version = "4.0.1"

  name                       = var.name
  delay_seconds              = var.delay_seconds
  max_message_size           = var.max_message_size
  message_retention_seconds  = var.message_retention_seconds
  receive_wait_time_seconds  = var.receive_wait_time_seconds
  sqs_managed_sse_enabled    = var.sqs_managed_sse_enabled
  visibility_timeout_seconds = var.visibility_timeout_seconds
  tags                       = var.tags
}