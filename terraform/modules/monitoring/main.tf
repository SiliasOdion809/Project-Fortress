resource "aws_cloudwatch_log_group" "lambda_logs" {
  name              = "/aws/lambda/${var.lambda_function_name}"
  retention_in_days = 30
}


resource "aws_cloudwatch_dashboard" "project_fortress" {
  dashboard_name = var.dashboard_name

  dashboard_body = jsonencode({
    widgets = [

      # =========================
      # EKS CLUSTER
      # =========================

      {
        type   = "metric"
        x      = 0
        y      = 0
        width  = 12
        height = 6

        properties = {
          title  = "EKS Worker Nodes"
          region = var.aws_region
          period = 300
          stat   = "Average"

          metrics = [
            [
              "ContainerInsights",
              "cluster_node_count",
              "ClusterName",
              var.cluster_name
            ],
            [
              ".",
              "cluster_failed_node_count",
              "ClusterName",
              var.cluster_name
            ]
          ]
        }
      },

      # =========================
      # EKS NODE CPU
      # =========================

      {
        type   = "metric"
        x      = 12
        y      = 0
        width  = 12
        height = 6

        properties = {
          title  = "EKS Node CPU Utilization"
          region = var.aws_region
          period = 300
          stat   = "Average"

          metrics = [
            [
              "ContainerInsights",
              "node_cpu_utilization",
              "ClusterName",
              var.cluster_name
            ]
          ]

          yAxis = {
            left = {
              min = 0
              max = 100
            }
          }
        }
      },

      # =========================
      # EKS NODE MEMORY
      # =========================

      {
        type   = "metric"
        x      = 0
        y      = 6
        width  = 12
        height = 6

        properties = {
          title  = "EKS Node Memory Utilization"
          region = var.aws_region
          period = 300
          stat   = "Average"

          metrics = [
            [
              "ContainerInsights",
              "node_memory_utilization",
              "ClusterName",
              var.cluster_name
            ]
          ]

          yAxis = {
            left = {
              min = 0
              max = 100
            }
          }
        }
      },

      # =========================
      # EKS RUNNING PODS
      # =========================

      {
        type   = "metric"
        x      = 12
        y      = 6
        width  = 12
        height = 6

        properties = {
          title  = "EKS Running Pods"
          region = var.aws_region
          period = 300
          stat   = "Average"

          metrics = [
            [
              "ContainerInsights",
              "namespace_number_of_running_pods",
              "ClusterName",
              var.cluster_name
            ]
          ]
        }
      },

      # =========================
      # LAMBDA INVOCATIONS
      # =========================

      {
        type   = "metric"
        x      = 0
        y      = 12
        width  = 12
        height = 6

        properties = {
          title  = "Lambda Invocations"
          region = var.aws_region
          period = 300
          stat   = "Sum"

          metrics = [
            [
              "AWS/Lambda",
              "Invocations",
              "FunctionName",
              var.lambda_function_name
            ]
          ]
        }
      },

      # =========================
      # LAMBDA ERRORS
      # =========================

      {
        type   = "metric"
        x      = 12
        y      = 12
        width  = 12
        height = 6

        properties = {
          title  = "Lambda Errors"
          region = var.aws_region
          period = 300
          stat   = "Sum"

          metrics = [
            [
              "AWS/Lambda",
              "Errors",
              "FunctionName",
              var.lambda_function_name
            ]
          ]
        }
      }

    ]
  })
}