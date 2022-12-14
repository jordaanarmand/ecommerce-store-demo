variable "location" {
  type        = string
  description = "The location for the deployment: northcentralusstage | canadacentral | westeurope | northeurope | eastus | eastus2 | eastasia | australiaeast | germanywestcentral | japaneast | uksouth | westus | centralus | northcentralus | southcentralus | koreacentral | brazilsouth"
  validation {
    condition     = can(regex("^[a-z]+$", var.location))
    error_message = "For the location value only a-z are allowed."
  }
}

variable "resource_group_id" {
  type        = string
  description = "Id of resource group"
}

variable "capp_environment_id" {
  type        = string
  description = "Id of the managed environment"
}

variable "cr_login_server" {
  type        = string
  description = "Login server of the acr"
}

variable "app_image_name" {
  type        = string
  description = "Name of the docker image to be deployed"
  validation {
    condition     = can(regex("^[a-z]+$", var.app_image_name))
    error_message = "For the app_image_name value only a-z are allowed."
  }
}

variable "app_image_tag" {
  type        = string
  description = "Docker container image tag name"
}

variable "app_name" {
  type        = string
  description = "Name of the app"
  validation {
    condition     = can(regex("^[a-z]+$", var.app_name))
    error_message = "For the app_name value only a-z are allowed."
  }
}

variable "uai_acr_capps_pull_id" {
  type = string
}

variable "uai_acr_pull_resource_id" {
  type = string
}
