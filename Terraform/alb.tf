provider "aws" {
  region = "us-east-1"
}

resource "aws_lb" "talb" {
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.albsg.id]
  subnets = [
    data.aws_subnet.public_01.id,
    data.aws_subnet.public_02.id
  ]
  enable_deletion_protection = true

  tags = {
    Name = "terraform-alb"
  }
}

resource "aws_lb_listener" "front_end" {
  load_balancer_arn = aws_lb.talb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.target.arn  
  }
}

resource "aws_lb_target_group" "target" {
  name     = "tf-example-lb-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.vpc.id

  health_check {
    path                = "/"
    protocol            = "HTTP"
    matcher             = "200"
    interval            = 30
    timeout             = 5
    healthy_threshold   = 2
    unhealthy_threshold = 2
  }

  tags = {
    Name = "alb-tg"
  }
}

resource "aws_lb_target_group_attachment" "test1" {
  target_group_arn = aws_lb_target_group.target.arn
  target_id        = aws_instance.webins1.id
  port             = 80
}

resource "aws_lb_target_group_attachment" "test2" {
  target_group_arn = aws_lb_target_group.target.arn  
  target_id        = aws_instance.webins2.id
  port             = 80
}
