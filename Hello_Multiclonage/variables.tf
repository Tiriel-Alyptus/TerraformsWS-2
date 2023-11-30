variable "instance_count" {
  description = "Nombre d'instances à créer"
  type        = number
}

variable "plan" {
  description = "Plan pour les caracs"
  type        = string
}

variable "region" {
  description = "Région des instances"
  type        = string
}

variable "os_id" {
  description = "ID de l'os associées"
  type        = number
}
