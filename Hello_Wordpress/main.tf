resource "vultr_instance" "wordpress" {
  plan   = "vc2-1c-1gb"
  region = "fra"
  os_id  = 387

  user_data = file("${path.module}/startup.sh")
}