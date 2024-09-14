resource "aws_route53_record" "expence" {
  count = length(var.instance_name)
  zone_id = var.zone_id
  name    = "${var.instance_name[count.index]}.${var.domain_name}" 
  type    = "A"
  ttl     = 1
  records = [aws_instance.tfvm[count.index].private_ip]
}