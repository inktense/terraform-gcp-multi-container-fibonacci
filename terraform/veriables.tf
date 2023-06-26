variable "gcp_region" {
  description = "Region where main resources should be created."
  type        = string
  default     = "europe-west2"
}

variable "project_name" {
  description = "Name of the project created."
  type        = string
  default     = "k8s-multi-container-fibonacci"
}

variable "tfstate_bucket_name" {
  description = "Name of the bucket where terraform state will be stored."
  type        = string
  default     = "tf-state-bucket-202304168659685447"
}