resource "aws_route53_record" "rc1" {
  zone_id = "Z0391430CID0AEK1PQ57"
  type    = "A"
  ttl     = 300
  name    = "resume.itsmartpen.com"
  records = [aws_lightsail_instance.server1.public_ip_address]
}
output "dns-name" {
  value = aws_route53_record.rc1.name
}
