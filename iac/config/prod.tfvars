environment = "prod"
map_users = [
  {
    userarn  = "arn:aws:iam::072353248229:user/github_actions"
    username = "github_actions"
    groups   = ["system:masters"]
  },
  {
    userarn  = "arn:aws:iam::072353248229:user/JackControAdmin"
    username = "JackControAdmin"
    groups   = ["system:masters"]
  }
]
