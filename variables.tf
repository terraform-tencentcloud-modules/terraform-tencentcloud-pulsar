variable "bind_cluster_id" {
  description = "The id of a pulsar instance."
  type        = string
  default     = ""
}

variable "create_pulsar_instance" {
  description = "Whether to create pulsar instance."
  type        = bool
  default     = true
}

variable "create_pulsar_namespace" {
  description = "Whether to create pulsar namespace."
  type        = bool
  default     = true
}

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

variable "create_pulsar_topic" {
  description = "Whether to create pulsar topic."
  type        = bool
  default     = true
}

#################
# pulsar instance
#################
variable "cluster_name" {
  description = "The name of tdmq cluster to be created."
  type        = string
  default     = ""
}

variable "instance_remark" {
  description = "Description of the tdmq cluster."
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tag description list."
  type        = map(string)
  default     = {}
}

#################
# pulsar namespace
#################
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

variable "namespace_remark" {
  description = "Description of the namespace."
  type        = string
  default     = ""
}

variable "retention_policy" {
  description = "The Policy of message to retain."
  type        = map(number)
  default     = {}
}

#################
# pulsar namespace_role
#################
variable "permissions" {
  description = "The permissions of tdmq role."
  type        = list(string)
  default     = []
}

#################
# pulsar role
#################
variable "role_remark" {
  description = "The description of tdmq role."
  type        = string
  default     = ""
}

variable "role_name" {
  description = "The name of tdmq role."
  type        = string
  default     = ""
}

#################
# pulsar topic
#################
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

variable "topic_remark" {
  description = "Description of the namespace."
  type        = string
  default     = ""
}