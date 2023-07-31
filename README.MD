# aws-terraform

### Requirements

- terraform ~> 1.5.4

### Description

- aws環境のインフラ構成をテストするterraformです
- 公開したくない情報は "terraform_secret.tfvars" に変数として
　定義しますがignoreするのでリポジトリにはありません
- codebuildでCI/CDを組んでいます
- 手動実行/自動実行の2通りです

### execution method

- 自動実行(CI/CD)
  - Plan実行方法:main ブランチへのPRの作成・変更
  - Apply実行方法:main ブランチへのPRのMerge
- 手動実行
  - 基本的には使わないけどCI/CDだと要件にあわない時に実行
  - Requirementsに記載のある terraform ver が必要

### Directory Layout

```text
aws-terraform
│  .gitignore
│  backend.tf
│  codebuild.tf
│  README.MD
│  ※その他のtfファイル
│  terraform_secret.tfvars(ignoreします)
│
├─codebuild
│  buildspec-apply.yml
│  buildspec-dryrun.yml
│
├─module
│  └─※その他のtfファイル等から参照されるファイル
│
└─scripts
    apply.sh
    dryrun.sh
    install.sh
```