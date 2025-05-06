resource "aws_ebs_volume" "app_volume" {
  availability_zone = var.availability_zone
  size              = var.volume_size  # GB
  type              = "gp2"
  tags = {
    Name = "app-ebs"
  }
}
