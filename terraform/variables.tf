variable "AZ_LOCATION" {
  description = "The Azure location where all resources in this example should be created"
  type        = string
  default     = "centralus"
  nullable    = false
}

variable "AZ_RESOURCE_GROUP" {
  description = "The resource group"
  type        = string
  default     = "io.dashaun.function.azure.client.webhook"
  nullable    = false
}

variable "AZ_FUNCTION_NAME_APP" {
  description = "The name of the application running functions"
  type        = string
  default     = "io-dashaun-function-azure-client-webhook"
  nullable    = false
}