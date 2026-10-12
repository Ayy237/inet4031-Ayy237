variable "postgres_user" {
  type        = string
  description = "Postgres username the app connects as"

  validation {
    condition     = var.postgres_user != "replace-me"
    error_message = "Set postgres_user in terraform.tfvars."
  }
}

variable "postgres_password" {
  type        = string
  description = "Postgres password for that user"
  sensitive   = true

  validation {
    condition     = var.postgres_password != "replace-me" && length(var.postgres_password) >= 16
    error_message = "Set postgres_password to at least 16 characters."
  }
}

variable "postgres_db" {
  type        = string
  description = "Name of the Postgres database"

  validation {
    condition     = var.postgres_db != "replace-me"
    error_message = "Set postgres_db in terraform.tfvars."
  }
}

variable "flask_secret_key" {
  type        = string
  description = "Flask session signing key"
  sensitive   = true

  validation {
    condition     = var.flask_secret_key != "replace-me" && length(var.flask_secret_key) >= 16
    error_message = "Set flask_secret_key to at least 16 characters."
  }
}
