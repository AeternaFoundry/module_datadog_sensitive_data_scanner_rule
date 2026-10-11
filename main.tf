resource "datadog_sensitive_data_scanner_rule" "sensitive_data_scanner_rules" {
  for_each = var.sensitive_data_scanner_rules

  group_id            = each.value.group_id
  description         = each.value.description
  excluded_namespaces = each.value.excluded_namespaces
  is_enabled          = each.value.is_enabled
  name                = each.value.name
  namespaces          = each.value.namespaces
  pattern             = each.value.pattern
  priority            = each.value.priority
  standard_pattern_id = each.value.standard_pattern_id
  tags                = each.value.tags

  dynamic "included_keyword_configuration" {
    for_each = each.value.included_keyword_configuration != null ? [each.value.included_keyword_configuration] : []
    content {
      character_count = included_keyword_configuration.value.character_count
      keywords        = included_keyword_configuration.value.keywords
    }
  }

  dynamic "suppressions" {
    for_each = each.value.suppressions != null ? [each.value.suppressions] : []
    content {
      ends_with   = suppressions.value.ends_with
      exact_match = suppressions.value.exact_match
      starts_with = suppressions.value.starts_with
    }
  }

  dynamic "text_replacement" {
    for_each = each.value.text_replacement != null ? [each.value.text_replacement] : []
    content {
      number_of_chars    = text_replacement.value.number_of_chars
      replacement_string = text_replacement.value.replacement_string
      should_save_match  = text_replacement.value.should_save_match
      type               = text_replacement.value.type
    }
  }
}

