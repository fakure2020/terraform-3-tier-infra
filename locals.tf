locals {
  project_tags = {
    coantact     = "devops@jjtech.com"
    application  = "payments"
    project      = "jjtech"
    environment  = "${terraform.workspace}"
    creationTime = timestamp()
  }
}