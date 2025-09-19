resource "aws_flow_log" "checkov_log_flow" {
  count = var.enabled == true ? 1 : 0
  #iam_role_arn    = "arn:aws:s3:::vntechsol"
  log_destination      = "arn:aws:s3:::vntechsol"
  log_destination_type = "s3"
  traffic_type         = "ALL"
  vpc_id               = var.vpc_id
  destination_options {
    file_format        = "parquet"
    per_hour_partition = true
  }

  tags = merge(
    {
      Name = format("%s", var.log_flow_name)
    },
    var.additional_tags,
  )

}