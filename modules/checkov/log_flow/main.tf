resource "aws_flow_log" "checkov_log_flow" {
  count = var.enabled == true ? 1 : 0
  #iam_role_arn    = "arn"
  log_destination = "log"
  traffic_type    = "ALL"
  vpc_id          = var.vpc_id

  tags = merge(
    {
      Name = format("%s", var.log_flow_name)
    },
    var.additional_tags,
  )

}