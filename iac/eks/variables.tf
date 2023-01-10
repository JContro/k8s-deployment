variable "region" {
  description = "AWS region to be deployed into."
  type        = string
}

variable "environment" {
  description = "Target deployment environment"
  type        = string
}

variable "map_accounts" {
  description = "Additional AWS account numbers to add to the aws-auth configmap."
  type        = list(string)

  default = []
}

variable "map_roles" {
  description = "Additional IAM roles to add to the aws-auth configmap."
  type = list(object({
    rolearn  = string
    username = string
    groups   = list(string)
  }))

  default = []
}

variable "map_users" {
  description = "Additional IAM users to add to the aws-auth configmap."
  type = list(object({
    userarn  = string
    username = string
    groups   = list(string)
  }))

  default = []
}

variable "dns" {
  description = "DNS suffix for the project"
  type        = string
}

variable "project" {
  description = "Tagging project description"
  type        = string
}

variable "context" {
  description = "Infrastructure context for secrets and tagging"
  type        = string
}

variable "container_access_key" {
  description = "IAM access key for the AWS containers"
  type        = string
  sensitive   = true
}

variable "container_secret_key" {
  description = "IAM secret key for the AWS containers"
  type        = string
  sensitive   = true
}