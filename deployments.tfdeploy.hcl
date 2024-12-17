deployment "test-org-mgmt" {
  inputs = {
    regions = ["eu-west-1", "eu-west-2"]
    alias = "test-org-mgmt"
    domain = "test-org-mgmt.example.com"
  }
}

deployment "test-org-child" {
  inputs = {
    regions = ["eu-west-1", "eu-west-2", "ap-southeast-2"]
    alias = "test-org-child"
    domain = "test-org-child.example.com"
  }
}
