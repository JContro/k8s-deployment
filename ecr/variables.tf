variable "region" {
  description = "AWS region to be deployed into."
  type        = string
}

variable "environment" {
  description = "Target deployment environment"
  type        = string
}

variable "prefix" {
  type        = string
  description = "container registry prefix"
  default     = ""
}

variable "suffix" {
  type        = string
  description = "container registry suffix"
  default     = ""
}

variable "project" {
  description = "Tagging project description"

  type = string
}