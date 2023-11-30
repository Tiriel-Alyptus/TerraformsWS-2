resource "github_repository" "sleepers" {
  name        = var.repo_name
  description = "Créé avec Terraform"
  visibility  = "private"  // ou "public"
}

