variable "create_pulsar_instance" {
  description = "Whether to create pulsar instance."
  type        = bool
  default     = true
}

variable "cluster_name" {
  description = "The name of tdmq cluster to be created."
  type        = string
  default     = ""
}

variable "bind_cluster_id" {
  description = "The Dedicated Cluster Id."
  type        = string
  default     = ""
}

variable "remark" {
  description = "Description of the tdmq cluster."
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tag description list."
  type        = map(string)
  default     = {}
}