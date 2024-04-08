resource "aws_instance" "app1" {
  ami = lookup(var.AmiLinux, var.region)
  #instance_type               = "${var.instance_type}"
  instance_type               = var.instance_types[count.index]
  associate_public_ip_address = var.enable_public_ip
  count                       = var.instance_count
  subnet_id                   = aws_subnet.PublicAZA.id
  vpc_security_group_ids      = ["${aws_security_group.WebServer.id}"]
  key_name                    = "Master-key"

  tags = {
    Name = var.instance_names[count.index]
  }

  user_data = file("app-userdata.sh")
}
