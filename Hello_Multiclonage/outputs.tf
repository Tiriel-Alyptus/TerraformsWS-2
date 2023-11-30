output "instance_ips" {
  value = [for instance in vultr_instance.L-DECAUDIN : instance.main_ip]
}

