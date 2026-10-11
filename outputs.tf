output "sensitive_data_scanner_rules_id" {
  description = "Map of id values across all sensitive_data_scanner_rules, keyed the same as var.sensitive_data_scanner_rules except keys with no id are omitted"
  value       = { for k, v in datadog_sensitive_data_scanner_rule.sensitive_data_scanner_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sensitive_data_scanner_rules_description" {
  description = "Map of description values across all sensitive_data_scanner_rules, keyed the same as var.sensitive_data_scanner_rules except keys with no description are omitted"
  value       = { for k, v in datadog_sensitive_data_scanner_rule.sensitive_data_scanner_rules : k => v.description if v.description != null && length(v.description) > 0 }
}
output "sensitive_data_scanner_rules_excluded_namespaces" {
  description = "Map of excluded_namespaces values across all sensitive_data_scanner_rules, keyed the same as var.sensitive_data_scanner_rules except keys with no excluded_namespaces are omitted"
  value       = { for k, v in datadog_sensitive_data_scanner_rule.sensitive_data_scanner_rules : k => v.excluded_namespaces if v.excluded_namespaces != null && length(v.excluded_namespaces) > 0 }
}
output "sensitive_data_scanner_rules_group_id" {
  description = "Map of group_id values across all sensitive_data_scanner_rules, keyed the same as var.sensitive_data_scanner_rules except keys with no group_id are omitted"
  value       = { for k, v in datadog_sensitive_data_scanner_rule.sensitive_data_scanner_rules : k => v.group_id if v.group_id != null && length(v.group_id) > 0 }
}
output "sensitive_data_scanner_rules_included_keyword_configuration" {
  description = "Map of included_keyword_configuration values across all sensitive_data_scanner_rules, keyed the same as var.sensitive_data_scanner_rules except keys with no included_keyword_configuration are omitted"
  value       = { for k, v in datadog_sensitive_data_scanner_rule.sensitive_data_scanner_rules : k => one(v.included_keyword_configuration) if v.included_keyword_configuration != null && length(v.included_keyword_configuration) > 0 }
}
output "sensitive_data_scanner_rules_is_enabled" {
  description = "Map of is_enabled values across all sensitive_data_scanner_rules, keyed the same as var.sensitive_data_scanner_rules except keys with no is_enabled are omitted"
  value       = { for k, v in datadog_sensitive_data_scanner_rule.sensitive_data_scanner_rules : k => v.is_enabled if v.is_enabled != null }
}
output "sensitive_data_scanner_rules_name" {
  description = "Map of name values across all sensitive_data_scanner_rules, keyed the same as var.sensitive_data_scanner_rules except keys with no name are omitted"
  value       = { for k, v in datadog_sensitive_data_scanner_rule.sensitive_data_scanner_rules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "sensitive_data_scanner_rules_namespaces" {
  description = "Map of namespaces values across all sensitive_data_scanner_rules, keyed the same as var.sensitive_data_scanner_rules except keys with no namespaces are omitted"
  value       = { for k, v in datadog_sensitive_data_scanner_rule.sensitive_data_scanner_rules : k => v.namespaces if v.namespaces != null && length(v.namespaces) > 0 }
}
output "sensitive_data_scanner_rules_pattern" {
  description = "Map of pattern values across all sensitive_data_scanner_rules, keyed the same as var.sensitive_data_scanner_rules except keys with no pattern are omitted"
  value       = { for k, v in datadog_sensitive_data_scanner_rule.sensitive_data_scanner_rules : k => v.pattern if v.pattern != null && length(v.pattern) > 0 }
}
output "sensitive_data_scanner_rules_priority" {
  description = "Map of priority values across all sensitive_data_scanner_rules, keyed the same as var.sensitive_data_scanner_rules except keys with no priority are omitted"
  value       = { for k, v in datadog_sensitive_data_scanner_rule.sensitive_data_scanner_rules : k => v.priority if v.priority != null }
}
output "sensitive_data_scanner_rules_standard_pattern_id" {
  description = "Map of standard_pattern_id values across all sensitive_data_scanner_rules, keyed the same as var.sensitive_data_scanner_rules except keys with no standard_pattern_id are omitted"
  value       = { for k, v in datadog_sensitive_data_scanner_rule.sensitive_data_scanner_rules : k => v.standard_pattern_id if v.standard_pattern_id != null && length(v.standard_pattern_id) > 0 }
}
output "sensitive_data_scanner_rules_suppressions" {
  description = "Map of suppressions values across all sensitive_data_scanner_rules, keyed the same as var.sensitive_data_scanner_rules except keys with no suppressions are omitted"
  value       = { for k, v in datadog_sensitive_data_scanner_rule.sensitive_data_scanner_rules : k => one(v.suppressions) if v.suppressions != null && length(v.suppressions) > 0 }
}
output "sensitive_data_scanner_rules_tags" {
  description = "Map of tags values across all sensitive_data_scanner_rules, keyed the same as var.sensitive_data_scanner_rules except keys with no tags are omitted"
  value       = { for k, v in datadog_sensitive_data_scanner_rule.sensitive_data_scanner_rules : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "sensitive_data_scanner_rules_text_replacement" {
  description = "Map of text_replacement values across all sensitive_data_scanner_rules, keyed the same as var.sensitive_data_scanner_rules except keys with no text_replacement are omitted"
  value       = { for k, v in datadog_sensitive_data_scanner_rule.sensitive_data_scanner_rules : k => one(v.text_replacement) if v.text_replacement != null && length(v.text_replacement) > 0 }
}

