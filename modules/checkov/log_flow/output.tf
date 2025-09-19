output "log_flow_id" {
  value = aws_flow_log.checkov_log_flow[0].id
}

output "log_flow_arn" {
  value = aws_flow_log.checkov_log_flow[0].arn
}

output "log_destination" {
  value = aws_flow_log.checkov_log_flow[0].log_destination
}