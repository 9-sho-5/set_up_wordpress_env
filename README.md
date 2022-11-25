# Set up wordpress environment with shell script

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
3. set_up_wp.shの実行 [第1引数にWorking-Treeのレポジトリ名 第1引数に作成したGithubレポジトリのurl]
→ ./set_up_wp.sh [Working-Tree name] [Github repository url]
4. 初期環境構築の完了

## 確認
下記の状態になれば完了です
- 新規Local　Siteのthemeに[Working-Treeのレポジトリ名]のthemeが追加されている
- Git remoteが[Github repository url]になっている
- VSCodeでWorking-Treeが開く
- Chromeの新規タブが開く
