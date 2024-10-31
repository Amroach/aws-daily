# resource "aws_ebs_volume" "public_ec2_volume" {
#   availability_zone = "eu-west-1a"
#   size              = 8
# }

# resource "aws_volume_attachment" "public_ec2_volume_attachment" {
#   device_name = "/dev/xvda"
#   volume_id   = aws_ebs_volume.public_ec2_volume.id
#   instance_id = aws_instance.private_ec2.id
# }
