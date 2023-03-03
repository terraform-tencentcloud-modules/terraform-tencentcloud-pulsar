variable "create_pulsar_namespace" {
  description = "Whether to create pulsar namespace."
  type        = bool
  default     = true
}

variable "cluster_id" {
  description = "The Dedicated Cluster Id."
  type        = string
  default     = ""
}

variable "environ_name" {
  description = "The name of namespace to be created."
  type        = string
  default     = ""
}

variable "msg_ttl" {
  description = "The expiration time of unconsumed message."
  type        = number
  default     = 60
}

variable "remark" {
  description = "Description of the namespace."
  type        = string
  default     = ""
}

variable "retention_policy" {
  description = "The Policy of message to retain."
  type        = map(number)
  default     = {}
}
