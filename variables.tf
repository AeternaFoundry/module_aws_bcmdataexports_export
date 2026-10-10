variable "bcmdataexports_exports" {
  description = <<EOT
Map of bcmdataexports_exports, attributes below
Optional:
    - tags
    - export (block):
        - data_query (optional, block):
            - query_statement (required)
            - table_configurations (optional)
        - description (optional)
        - destination_configurations (optional, block):
            - s3_destination (optional, block):
                - s3_bucket (required)
                - s3_output_configurations (optional, block):
                    - compression (required)
                    - format (required)
                    - output_type (required)
                    - overwrite (required)
                - s3_prefix (required)
                - s3_region (required)
        - name (required)
        - refresh_cadence (optional, block):
            - frequency (required)
EOT

  type = map(object({
    tags = optional(map(string))
    export = optional(list(object({
      data_query = optional(list(object({
        query_statement      = string
        table_configurations = optional(map(any))
      })))
      description = optional(string)
      destination_configurations = optional(list(object({
        s3_destination = optional(list(object({
          s3_bucket = string
          s3_output_configurations = optional(list(object({
            compression = string
            format      = string
            output_type = string
            overwrite   = string
          })))
          s3_prefix = string
          s3_region = string
        })))
      })))
      name = string
      refresh_cadence = optional(list(object({
        frequency = string
      })))
    })))
  }))
}

