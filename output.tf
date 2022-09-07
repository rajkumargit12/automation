data "aws_region" "current" {}

output "region" {
  value = data.aws_region.current

}
#"arn:aws:logs:ap-southeast-1:234949410202:log-group:/aws/lambda/demoupload:*"