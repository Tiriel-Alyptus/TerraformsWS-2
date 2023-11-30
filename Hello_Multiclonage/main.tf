resource "vultr_instance" "L-DECAUDIN" {
  count     = var.instance_count
  plan      = var.plan
  region    = var.region
  os_id     = var.os_id
  label     = "vultr-instance-${count.index}"
}
