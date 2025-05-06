resource "aws_ecr_repository" "app_repo" {
  name                 = var.repository_name
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

# resource "aws_ecr_lifecycle_policy" "app_repo_lifecycle_policy" {
#   repository = aws_ecr_repository.app_repo.name

#   policy = jsonencode({
#     rules = [
#       {
#         rulePriority = 1
#         selection    = {
#           tagStatus = "tagged"
#           tagPrefixList = [
#             "latest",
#           ]
#         }
#         action = {
#           type = "expire"
#         }
#       },
#     ]
#   })
# }