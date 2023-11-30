resource "github_repository" "sleepers" {
  name        = var.sleepers
  description = "Créé avec Terraform"
  private     = true
}
