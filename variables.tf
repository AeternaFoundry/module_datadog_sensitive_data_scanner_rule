variable "sensitive_data_scanner_rules" {
  description = <<EOT
Map of sensitive_data_scanner_rules, attributes below
Required:
    - group_id
Optional:
    - description
    - excluded_namespaces
    - is_enabled
    - name
    - namespaces
    - pattern
    - priority
    - standard_pattern_id
    - tags
    - included_keyword_configuration (block):
        - character_count (required)
        - keywords (required)
    - suppressions (block):
        - ends_with (optional)
        - exact_match (optional)
        - starts_with (optional)
    - text_replacement (block):
        - number_of_chars (optional)
        - replacement_string (optional)
        - should_save_match (optional)
        - type (required)
EOT

  type = map(object({
    group_id            = string
    description         = optional(string)
    excluded_namespaces = optional(list(string))
    is_enabled          = optional(bool)
    name                = optional(string)
    namespaces          = optional(list(string))
    pattern             = optional(string)
    priority            = optional(number)
    standard_pattern_id = optional(string)
    tags                = optional(list(string))
    included_keyword_configuration = optional(object({
      character_count = number
      keywords        = list(string)
    }))
    suppressions = optional(object({
      ends_with   = optional(list(string))
      exact_match = optional(list(string))
      starts_with = optional(list(string))
    }))
    text_replacement = optional(object({
      number_of_chars    = optional(number)
      replacement_string = optional(string)
      should_save_match  = optional(bool)
      type               = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.sensitive_data_scanner_rules : (
        v.priority == null || (v.priority >= 1 && v.priority <= 5)
      )
    ])
    error_message = "must be between 1 and 5"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

