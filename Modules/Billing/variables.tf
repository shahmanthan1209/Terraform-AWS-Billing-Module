variable "name" {}

variable "account_budget_limit" {}

variable "services" {
  description = "List of AWS services to be monitored in terms of costs"

  type = map(object({
    budget_limit = string
  }))
}
