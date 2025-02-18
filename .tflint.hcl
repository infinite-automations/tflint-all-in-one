tflint {
  required_version = ">= 0.50"
}

config {
    call_module_type = "all"
    force = false
    disabled_by_default = false
}

plugin "terraform" {
  enabled = true
  preset  = "recommended"
}