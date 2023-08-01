#CodeBuild
import {
  to = aws_codebuild_project.terraform_apply
  id = "terraform-apply"
}

import {
  to = aws_codebuild_project.terraform_dryrun
  id = "terraform-dryrun"
}

#ロール
import {
  to = aws_iam_role.terraform_plan
  id = "codebuild-s-service-role"
}

import {
  to = aws_iam_role.terraform_apply
  id = "codebuild-t-service-role"
}

#ポリシー
import {
  to = aws_iam_policy.terraform_apply
  id = "arn:aws:iam::${var.USERID}:policy/service-role/CodeBuildBasePolicy-terraform-apply-ap-northeast-1"
}

import {
  to = aws_iam_policy.terraform_dryrun
  id = "arn:aws:iam::${var.USERID}:policy/service-role/CodeBuildBasePolicy-terraform-dryrun-ap-northeast-1"
}
