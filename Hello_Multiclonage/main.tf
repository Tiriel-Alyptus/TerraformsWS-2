resource "vultr_instance" "vultr_instances" {
  count     = var.instance_count
  plan      = var.plan
  region    = var.region
  os_id     = var.os_id
  label     = "vultr-instance-${count.index}"
}
