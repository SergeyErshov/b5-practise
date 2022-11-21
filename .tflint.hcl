config {
  plugin_dir = "~/.tflint.d/plugins"

  module = true
  force = false
  disabled_by_default = false

  variables = ["foo=bar", "bar=[\"baz\"]"]
}

rule "terraform_typed_variables" {
   enabled = true
}

rule "terraform_unused_declarations" {
   enabled = true
}

rule "terraform_required_providers" {
   enabled = true
}

rule "terraform_comment_syntax" {
   enabled = true
}

rule "terraform_deprecated_interpolation" {
enabled = true
}

rule "terraform_deprecated_index" {
enabled = true
}
