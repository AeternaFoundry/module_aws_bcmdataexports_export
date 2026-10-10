output "bcmdataexports_exports_id" {
  description = "Map of id values across all bcmdataexports_exports, keyed the same as var.bcmdataexports_exports"
  value       = { for k, v in aws_bcmdataexports_export.bcmdataexports_exports : k => v.id if v.id != null && length(v.id) > 0 }
}
output "bcmdataexports_exports_arn" {
  description = "Map of arn values across all bcmdataexports_exports, keyed the same as var.bcmdataexports_exports"
  value       = { for k, v in aws_bcmdataexports_export.bcmdataexports_exports : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "bcmdataexports_exports_export" {
  description = "Map of export values across all bcmdataexports_exports, keyed the same as var.bcmdataexports_exports"
  value       = { for k, v in aws_bcmdataexports_export.bcmdataexports_exports : k => v.export if v.export != null && length(v.export) > 0 }
}
output "bcmdataexports_exports_tags" {
  description = "Map of tags values across all bcmdataexports_exports, keyed the same as var.bcmdataexports_exports"
  value       = { for k, v in aws_bcmdataexports_export.bcmdataexports_exports : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "bcmdataexports_exports_tags_all" {
  description = "Map of tags_all values across all bcmdataexports_exports, keyed the same as var.bcmdataexports_exports"
  value       = { for k, v in aws_bcmdataexports_export.bcmdataexports_exports : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

