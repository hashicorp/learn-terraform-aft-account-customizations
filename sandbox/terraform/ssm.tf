resource "aws_ssm_paramater" "foo" {
  name = "/accID"
  type = "String"
  value = "${data.aws_caller_identity.current.account_id}"
}
