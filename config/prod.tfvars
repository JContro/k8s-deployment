environment = "prod"
map_users = [
  {
    userarn  = "arn:aws:iam::156462579418:user/AWS-Terraform-Upload"
    username = "AWS-Terraform-Upload"
    groups   = ["system:masters"]
  },
  {
    userarn  = "arn:aws:iam::156462579418:user/AWS-Prod-Alias"
    username = "AWS-Prod-Alias"
    groups   = ["system:masters"]
  },
  {
    userarn  = "arn:aws:iam::156462579418:user/MartinPalmer"
    username = "MartinPalmer"
    groups   = ["system:masters"]
  },
  {
    userarn  = "arn:aws:iam::156462579418:user/cdp-aws-prod"
    username = "cdp-aws-prod"
    groups   = ["system:masters"]
  },
  {
    userarn  = "arn:aws:iam::156462579418:user/JackContro"
    username = "JackContro"
    groups   = ["system:masters"]
  },
  {
    userarn  = "arn:aws:iam::156462579418:user/MattLeggett"
    username = "MattLeggett"
    groups   = ["system:masters"]
  },
  {
    userarn  = "arn:aws:iam::156462579418:user/VickyNorman"
    username = "VickyNorman"
    groups   = ["system:masters"]
  },
  {
    userarn  = "arn:aws:iam::156462579418:user/RikWatson"
    username = "RikWatson"
    groups   = ["system:masters"]
  },
  {
    userarn  = "arn:aws:iam::156462579418:user/LaurenArcher"
    username = "LaurenArcher"
    groups   = ["system:masters"]
  },
  {
    userarn  = "arn:aws:iam::156462579418:user/EmmaBaldachin"
    username = "EmmaBaldachin"
    groups   = ["system:masters"]
  },
  {
    userarn  = "arn:aws:iam::156462579418:user/AbelantZahiri"
    username = "AbelantZahiri"
    groups   = ["system:masters"]
  }
]
