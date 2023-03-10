variable "create_pulsar_topic" {
  description = "Whether to create pulsar topic."
  type        = bool
  default     = true
}

variable "cluster_id" {
  description = "The Dedicated Cluster Id."
  type        = string
  default     = ""
}

variable "environ_id" {
  description = "The name of tdmq namespace."
  type        = string
  default     = ""
}

variable "partitions" {
  description = "The partitions of topic."
  type        = number
}

variable "topic_name" {
  description = "The name of topic to be created."
  type        = string
  default     = ""
}

variable "topic_type" {
  description = "The type of topic."
  type        = number
}

variable "remark" {
  description = "Description of the namespace."
  type        = string
  default     = ""
}