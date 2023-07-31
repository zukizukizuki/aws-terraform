# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "terraform-dryrun"
resource "aws_codebuild_project" "terraform_dryrun" {
  badge_enabled          = false
  build_timeout          = 60
  concurrent_build_limit = 1
  description            = null
  encryption_key         = "arn:aws:kms:ap-northeast-1:${var.USERID}:alias/aws/s3"
  name                   = "terraform-dryrun"
  project_visibility     = "PRIVATE"
  queued_timeout         = 480
  resource_access_role   = null
  service_role           = "arn:aws:iam::${var.USERID}:role/service-role/codebuild-s-service-role"
  source_version         = null
  tags                   = {}
  tags_all               = {}
  artifacts {
    artifact_identifier    = null
    bucket_owner_access    = null
    encryption_disabled    = false
    location               = null
    name                   = null
    namespace_type         = null
    override_artifact_name = false
    packaging              = null
    path                   = null
    type                   = "NO_ARTIFACTS"
  }
  cache {
    location = null
    modes    = []
    type     = "NO_CACHE"
  }
  environment {
    certificate                 = null
    compute_type                = "BUILD_GENERAL1_SMALL"
    image                       = "aws/codebuild/amazonlinux2-x86_64-standard:5.0"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = false
    type                        = "LINUX_CONTAINER"
  }
  logs_config {
    cloudwatch_logs {
      group_name  = null
      status      = "ENABLED"
      stream_name = null
    }
    s3_logs {
      bucket_owner_access = null
      encryption_disabled = false
      location            = null
      status              = "DISABLED"
    }
  }
  source {
    buildspec           = "codebuild/buildspec-dryrun.yml"
    git_clone_depth     = 1
    insecure_ssl        = false
    location            = "https://github.com/zukizukizuki/aws-terraform.git"
    report_build_status = false
    type                = "GITHUB"
    git_submodules_config {
      fetch_submodules = false
    }
  }
}

# __generated__ by Terraform from "terraform-apply"
resource "aws_codebuild_project" "terraform_apply" {
  badge_enabled          = false
  build_timeout          = 60
  concurrent_build_limit = 1
  description            = null
  encryption_key         = "arn:aws:kms:ap-northeast-1:${var.USERID}:alias/aws/s3"
  name                   = "terraform-apply"
  project_visibility     = "PRIVATE"
  queued_timeout         = 480
  resource_access_role   = null
  service_role           = "arn:aws:iam::${var.USERID}:role/service-role/codebuild-t-service-role"
  source_version         = null
  tags                   = {}
  tags_all               = {}
  artifacts {
    artifact_identifier    = null
    bucket_owner_access    = null
    encryption_disabled    = false
    location               = null
    name                   = null
    namespace_type         = null
    override_artifact_name = false
    packaging              = null
    path                   = null
    type                   = "NO_ARTIFACTS"
  }
  cache {
    location = null
    modes    = []
    type     = "NO_CACHE"
  }
  environment {
    certificate                 = null
    compute_type                = "BUILD_GENERAL1_SMALL"
    image                       = "aws/codebuild/amazonlinux2-x86_64-standard:5.0"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = false
    type                        = "LINUX_CONTAINER"
  }
  logs_config {
    cloudwatch_logs {
      group_name  = null
      status      = "ENABLED"
      stream_name = null
    }
    s3_logs {
      bucket_owner_access = null
      encryption_disabled = false
      location            = null
      status              = "DISABLED"
    }
  }
  source {
    buildspec           = "codebuild/buildspec-apply.yml"
    git_clone_depth     = 1
    insecure_ssl        = false
    location            = "https://github.com/zukizukizuki/aws-terraform.git"
    report_build_status = false
    type                = "GITHUB"
    git_submodules_config {
      fetch_submodules = false
    }
  }
}

# __generated__ by Terraform from "arn:aws:iam::${var.USERID}:policy/service-role/CodeBuildBasePolicy-terraform-apply-ap-northeast-1"
resource "aws_iam_policy" "terraform_apply" {
  description = "Policy used in trust relationship with CodeBuild"
  name        = "CodeBuildBasePolicy-terraform-apply-ap-northeast-1"
  name_prefix = null
  path        = "/service-role/"
  policy      = "{\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:logs:ap-northeast-1:${var.USERID}:log-group:/aws/codebuild/terraform-apply\",\"arn:aws:logs:ap-northeast-1:${var.USERID}:log-group:/aws/codebuild/terraform-apply:*\"]},{\"Action\":[\"s3:PutObject\",\"s3:GetObject\",\"s3:GetObjectVersion\",\"s3:GetBucketAcl\",\"s3:GetBucketLocation\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:s3:::codepipeline-ap-northeast-1-*\"]},{\"Action\":[\"codebuild:CreateReportGroup\",\"codebuild:CreateReport\",\"codebuild:UpdateReport\",\"codebuild:BatchPutTestCases\",\"codebuild:BatchPutCodeCoverages\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:codebuild:ap-northeast-1:${var.USERID}:report-group/terraform-apply-*\"]}],\"Version\":\"2012-10-17\"}"
  tags        = {}
  tags_all    = {}
}

# __generated__ by Terraform from "arn:aws:iam::${var.USERID}:policy/service-role/CodeBuildBasePolicy-terraform-dryrun-ap-northeast-1"
resource "aws_iam_policy" "terraform_dryrun" {
  description = "Policy used in trust relationship with CodeBuild"
  name        = "CodeBuildBasePolicy-terraform-dryrun-ap-northeast-1"
  name_prefix = null
  path        = "/service-role/"
  policy      = "{\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:logs:ap-northeast-1:${var.USERID}:log-group:/aws/codebuild/terraform-dryrun\",\"arn:aws:logs:ap-northeast-1:${var.USERID}:log-group:/aws/codebuild/terraform-dryrun:*\"]},{\"Action\":[\"s3:PutObject\",\"s3:GetObject\",\"s3:GetObjectVersion\",\"s3:GetBucketAcl\",\"s3:GetBucketLocation\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:s3:::codepipeline-ap-northeast-1-*\"]},{\"Action\":[\"codebuild:CreateReportGroup\",\"codebuild:CreateReport\",\"codebuild:UpdateReport\",\"codebuild:BatchPutTestCases\",\"codebuild:BatchPutCodeCoverages\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:codebuild:ap-northeast-1:${var.USERID}:report-group/terraform-dryrun-*\"]}],\"Version\":\"2012-10-17\"}"
  tags        = {}
  tags_all    = {}
}

# __generated__ by Terraform from "codebuild-s-service-role"
resource "aws_iam_role" "terraform_plan" {
  assume_role_policy    = "{\"Statement\":[{\"Action\":\"sts:AssumeRole\",\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"codebuild.amazonaws.com\"}}],\"Version\":\"2012-10-17\"}"
  description           = null
  force_detach_policies = false
  managed_policy_arns   = ["arn:aws:iam::${var.USERID}:policy/service-role/CodeBuildBasePolicy-terraform-dryrun-ap-northeast-1", "arn:aws:iam::aws:policy/PowerUserAccess"]
  max_session_duration  = 3600
  name                  = "codebuild-s-service-role"
  name_prefix           = null
  path                  = "/service-role/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "codebuild-t-service-role"
resource "aws_iam_role" "terraform_apply" {
  assume_role_policy    = "{\"Statement\":[{\"Action\":\"sts:AssumeRole\",\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"codebuild.amazonaws.com\"}}],\"Version\":\"2012-10-17\"}"
  description           = null
  force_detach_policies = false
  managed_policy_arns   = ["arn:aws:iam::${var.USERID}:policy/service-role/CodeBuildBasePolicy-terraform-apply-ap-northeast-1", "arn:aws:iam::aws:policy/PowerUserAccess"]
  max_session_duration  = 3600
  name                  = "codebuild-t-service-role"
  name_prefix           = null
  path                  = "/service-role/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}
