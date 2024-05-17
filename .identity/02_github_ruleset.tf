resource "github_organization_ruleset" "ruleset_main" {
  name        = "main"
  target      = "branch"
  enforcement = "active"

  conditions {
    ref_name {
      include = ["main"]
      exclude = []
    }
    repository_name {

      exclude = []
      include = ["next-flow"]
    }
  }

  rules {
    creation                = true
    update                  = true
    deletion                = true
    required_linear_history = true
    required_signatures     = true

    branch_name_pattern {
      name     = "example"
      negate   = false
      operator = "starts_with"
      pattern  = "ex"
    }
  }
}

resource "github_organization_ruleset" "ruleset_next" {
  name        = "next"
  target      = "branch"
  enforcement = "active"

  conditions {
    ref_name {
      include = ["next"]
      exclude = []
    }
    repository_name {

      exclude = []
      include = ["next-flow"]
    }
  }

  rules {
    creation                = true
    update                  = true
    deletion                = true
    required_linear_history = true
    required_signatures     = true

    branch_name_pattern {
      name     = "example"
      negate   = false
      operator = "starts_with"
      pattern  = "ex"
    }
  }
}
