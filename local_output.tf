resource "local_file" "script_s3" {
    content     = "aws s3 cp terraform.tfstate s3://${data.aws_caller_identity.current.account_id}-terraform-state/tf-bootstrap/terraform.tfstate"
    filename = "${path.module}/tf.s3command.sh"
}