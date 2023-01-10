resource "aws_security_group" "worker_group_mgmt_one" {
  name_prefix = format("%s.%s_worker_group_mgmt_one.sg", var.environment, var.project)

  vpc_id = module.vpc.vpc_id

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"

    cidr_blocks = [
      "10.0.0.0/8",
    ]
  }

  tags = merge(tomap({ "worker group" = "one" }), local.default_tags)

}

resource "aws_security_group" "worker_group_mgmt_two" {
  name_prefix = format("%s.%s_%s_worker_group_mgmt_two.sg", var.environment, var.project, var.context)
  vpc_id      = module.vpc.vpc_id

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"

    cidr_blocks = [
      "192.168.0.0/16",
    ]
  }
  tags = merge(tomap({ "worker group" = "two" }), local.default_tags)

}

resource "aws_security_group" "all_worker_mgmt" {
  name_prefix = format("%s.%s_worker_group_mgmt_three.sg", var.environment, var.project)
  vpc_id      = module.vpc.vpc_id

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"

    cidr_blocks = [
      "10.0.0.0/8",
      "172.16.0.0/12",
      "192.168.0.0/16",
    ]
  }

  tags = merge(tomap({ "worker group" = "three" }), local.default_tags)

}