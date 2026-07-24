# Plan-level smoke test: verifies the module plans cleanly against the
# provider schemas without needing credentials.
#
# In a real module, mock the providers it requires and pass its required
# variables, e.g.:
#
#   mock_provider "aws" {}
#
#   run "plan" {
#     command = plan
#     variables {
#       name = "test"
#     }
#     assert {
#       condition     = aws_kms_key.this.description != ""
#       error_message = "expected a key description"
#     }
#   }

run "plan" {
  command = plan
}
