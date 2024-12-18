store "varset" "test_org_mgmt" {
  id = "varset-232kdo7KYQEXuMCq"
  category = "env"
}

deployment "test_org_mgmt" {
  inputs = {
    access_key = store.varset.test_org_mgmt.AWS_ACCESS_KEY_ID
    secret_key = store.varset.test_org_mgmt.AWS_SECRET_ACCESS_KEY
    regions = ["eu-west-1", "eu-west-2"]

    alias = "test-org-mgmt"
    domain = "test-org-mgmt.medhouse.uk"
  }
}

store "varset" "test_org_child" {
  id = "varset-Y6428hoSQ6QDGbJr"
  category = "env"
}

deployment "test_org_child" {
  inputs = {
    access_key = store.varset.test_org_child.AWS_ACCESS_KEY_ID
    secret_key = store.varset.test_org_child.AWS_SECRET_ACCESS_KEY
    regions = ["eu-west-1", "eu-west-2", "ap-southeast-2"]
    
    alias = "test-org-child"
    domain = "test-org-child.medhouse.uk"
  }
}
