resource "aws_cloudwatch_metric_alarm" "eks_node_cpu_high" {
  alarm_name          = "project-fortress-eks-node-cpu-high"
  alarm_description   = "EKS node CPU utilization is above 80%"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "node_cpu_utilization"
  namespace           = "ContainerInsights"
  period              = 300
  statistic           = "Average"
  threshold           = 80

  alarm_actions = [var.sns_topic_arn]

  dimensions = {
    ClusterName = var.cluster_name
  }

  treat_missing_data = "notBreaching"

  tags = {
    Project     = "project-fortress"
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}


resource "aws_cloudwatch_metric_alarm" "eks_node_memory_high" {
  alarm_name          = "project-fortress-eks-node-memory-high"
  alarm_description   = "EKS node memory utilization is above 80%"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "node_memory_utilization"
  namespace           = "ContainerInsights"
  period              = 300
  statistic           = "Average"
  threshold           = 80
   
  alarm_actions = [var.sns_topic_arn]

  dimensions = {
    ClusterName = var.cluster_name
  }

  treat_missing_data = "notBreaching"

  tags = {
    Project     = "project-fortress"
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}


resource "aws_cloudwatch_metric_alarm" "eks_failed_nodes" {
  alarm_name          = "project-fortress-eks-failed-nodes"
  alarm_description   = "One or more EKS nodes have failed"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 1
  metric_name         = "cluster_failed_node_count"
  namespace           = "ContainerInsights"
  period              = 300
  statistic           = "Maximum"
  threshold           = 0

  alarm_actions = [var.sns_topic_arn]

  dimensions = {
    ClusterName = var.cluster_name
  }

  treat_missing_data = "notBreaching"

  tags = {
    Project     = "project-fortress"
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}


resource "aws_cloudwatch_metric_alarm" "lambda_errors" {
  alarm_name          = "project-fortress-lambda-errors"
  alarm_description   = "Project Fortress asset processor Lambda is reporting errors"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 1
  metric_name         = "Errors"
  namespace           = "AWS/Lambda"
  period              = 300
  statistic           = "Sum"
  threshold           = 0

  alarm_actions = [var.sns_topic_arn]

  dimensions = {
    FunctionName = var.lambda_function_name
  }

  treat_missing_data = "notBreaching"

  tags = {
    Project     = "project-fortress"
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}