module "networking" {
  source = "./modules/networking"
}

module "kms" {
  source = "./modules/kms"

  project_name = var.project_name
  environment  = var.environment
  tags         = local.common_tags
}

module "ssm" {
  source = "./modules/ssm"

  project_name = var.project_name
  environment  = var.environment

  parameters = {
    aws_region         = var.aws_region
    environment        = var.environment
    cluster_name       = module.eks.cluster_name
    assets_bucket_name = module.s3.bucket_name
  }

  tags = local.common_tags
}

module "secrets_manager" {
  source = "./modules/secrets-manager"

  project_name   = var.project_name
  environment    = var.environment
  mysql_username = var.mysql_username

  kms_key_arn = module.kms.key_arn

  tags = local.common_tags
}

module "eks" {
  source = "./modules/eks"

  vpc_id              = module.networking.vpc_id
  private_subnet_ids  = module.networking.private_subnets
  dynamodb_policy_arn = module.iam.dynamodb_policy_arn
}

module "rds" {
  source = "./modules/rds"

  vpc_id             = module.networking.vpc_id
  private_subnet_ids = module.networking.private_subnets

  mysql_password    = module.secrets_manager.mysql_password
  postgres_password = module.secrets_manager.postgres_password
}

module "dynamodb" {
  source = "./modules/dynamodb"
}

module "s3" {
  source = "./modules/s3"

  bucket_name = var.asset_bucket_name
}

module "oidc" {
  source = "./modules/oidc"
}

module "iam" {
  source = "./modules/iam"


  project_name = var.project_name
  environment  = var.environment
  tags         = local.common_tags

  terraform_state_bucket_name = "project-bedrock-tfstate-silias"
  assets_bucket_arn           = module.s3.assets_bucket_arn
  oidc_provider_arn           = module.eks.oidc_provider_arn
  oidc_provider               = module.eks.oidc_provider

  mysql_secret_arn = module.secrets_manager.mysql_secret_arn

  environment_parameter_arn   = module.ssm.environment_parameter_arn
  assets_bucket_parameter_arn = module.ssm.assets_bucket_parameter_arn

  github_oidc_provider_arn = module.oidc.provider_arn

  github_subject_patterns = [
    "repo:SiliasOdion809/Project-Fortress:ref:refs/heads/main",
    "repo:SiliasOdion809/Project-Fortress:ref:refs/heads/feature/*"
  ]
}

module "lambda" {
  source = "./modules/lambda"

  bucket_name = module.s3.bucket_name

  bucket_arn = module.s3.bucket_arn

  lambda_role_arn = module.iam.lambda_role_arn
}

module "monitoring" {
  source = "./modules/monitoring"
}

module "ecr" {
  source = "./modules/ecr"
}

module "addons" {

  source = "./modules/addons"

  cluster_name = module.eks.cluster_name

  region = var.aws_region

  vpc_id = module.networking.vpc_id

  alb_controller_role_arn = module.iam.alb_controller_role_arn
}