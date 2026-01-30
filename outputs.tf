output "ec2_instances_info" {
  description = "Public IP addresses of all EC2 instances with environment and app info"
  value = {
    for name, instance in aws_instance.ec2 :
    name => {
      public_ip = instance.public_ip
      env       = instance.tags.env
      app       = instance.tags.app
    }
  }
}
