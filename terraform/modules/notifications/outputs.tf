output "topic_arn" {
  description = "SNS topic ARN for Project Fortress alerts"
  value       = aws_sns_topic.alerts.arn
}

output "topic_name" {
  description = "SNS topic name"
  value       = aws_sns_topic.alerts.name
}