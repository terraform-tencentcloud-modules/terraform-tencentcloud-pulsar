variable "create_pulsar_role" {
  description = "Whether to create pulsar role."
  type        = bool
  default     = true
}

variable "create_pulsar_namespace_role" {
  description = "Whether to create pulsar namespace role."
  type        = bool
  default     = true
}

variable "cluster_id" {
  description = "The id of tdmq cluster."
  type        = string
  default     = ""
}

variable "remark" {
  description = "The description of tdmq role."
  type        = string
  default     = ""
}

variable "role_name" {
  description = "The name of tdmq role."
  type        = string
  default     = ""
}

variable "environ_id" {
  description = "The name of tdmq namespace."
  type        = string
  default     = ""
}

variable "permissions" {
  description = "The permissions of tdmq role."
  type        = list(string)
  default     = []
}

