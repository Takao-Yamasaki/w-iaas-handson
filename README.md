# w-iaas-handson
- `Microsoft Azure`で初めて構築したものをTerraform化したものです。
## Azure CLIのインストール
- https://learn.microsoft.com/ja-jp/cli/azure/install-azure-cli-macos
```
brew update && brew install azure-cli
```

## 起動方法
```
terraform apply
```

## 事前準備
- リソースグループの作成
```
az group create \
  --name w-iaas-rg \
  --location japaneast
```
- ストレージアカウントを作成
tfstateの保管及び状態ロックを行うストレージアカウントを作成する
```
az storage account create \
  --resource-group w-iaas-rg \
  --name w-iaas-tf \
  --sku Standard_LRS \
  --encryption-services blob
```
- コンテナを作成
```
az storage container create \
  --name tfstate \
  --account-name w-iaas-tf
```
