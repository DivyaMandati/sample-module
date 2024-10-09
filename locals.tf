#locals {
#  # exmaple names on how they look, 
#  # rg-sas-psu-dev,  rg-sas-psu-qa,  rg-sas-psu-stg
#  # rg-sas-nrm-dev, rg-sas-nrm-stg, rg-sas-nrm-prod
#  prefix = "rg"
#  name   = "${local.prefix}-${var.main_project}-${var.sub_project}-${var.environment}"
# }

locals {
  # Resource group naming convention
  prefix = "rg"
  name   = "${local.prefix}-${var.main_project}-${var.sub_project}-${var.environment}"

  # Storage account naming convention
  storage_account_name = "st${var.main_project}${var.sub_project}${var.environment}${random_id.random_hex.hex}"
}


