# シェルスクリプトによるWordPress環境の構築

shell scriptにより下記のことを実現
- Local Siteを使用したWordPress環境構築
- Github連携
- Web制作環境の初期設定

## 構築手順

- 前提条件 
  - Local Siteのインストール
  - Githubアカウントの作成
 
1. localにて新規Local Siteの作成
2. Githubにて、リモートレポジトリの作成
3. ./set_up_wp.sh [作成した Local site名] [第2引数に作成したGithubレポジトリのurl] の実行

```
$ source ./set_up_wp.sh [new Lical Site name] [Github repository url]
```
上記のコマンド実行で、初期環境構築の完了

## 確認
下記の状態になれば完了です
- 新規Local　Siteのthemeに[Working-Treeのレポジトリ名]のthemeが追加されている
- Git remoteが[Github repository url]になっている
- VSCodeでWorking-Treeが開く
- Chromeの新規タブが開く
