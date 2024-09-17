module "resource_group" {
  source       = "../"
  environment  = var.environment
  main_project = var.main_project
  sub_project  = var.sub_project
  location     = var.location
  tags         = var.tags

}