resource "aws_iam_account_alias" "this" {
  account_alias = "stacktest-${var.alias}"
}

resource "aws_iam_account_password_policy" "this" {
  minimum_password_length        = 20
  require_lowercase_characters   = true
  require_numbers                = true
  require_uppercase_characters   = true
  require_symbols                = true
  allow_users_to_change_password = true
}
