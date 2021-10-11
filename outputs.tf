resource "local_file" "script_s3" {
content     = <<EOT
terraform {
  backend "s3" {
    bucket = "${data.aws_caller_identity.current.account_id}-terraform-state"
    key = "global/s3/terraform.tfstate"
    region = "${var.region}"
    dynamodb_table = "${aws_dynamodb_table.terraform_locks.id}"
    encrypt = true
  }
}
EOT
filename = "${path.module}/backend.tf.gen"
file_permission = "600"
}



