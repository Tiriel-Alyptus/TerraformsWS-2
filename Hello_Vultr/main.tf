resource "vultr_instance" "L-DECAUDIN" {
  plan   = "vc2-1c-1gb"
  region = "fra"
  os_id  = 387
  user_data = file("${path.module}/startup.sh")
}

