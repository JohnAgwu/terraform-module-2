resource "aws_instance" "app_node" {
    ami  = "ami-0b4c7755cdf0d9219"
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.some-rule.id]
    subnet_id     = aws_subnet.main_subnet.id

    tags = {
        Name  = var.node_name
    }
  
}

