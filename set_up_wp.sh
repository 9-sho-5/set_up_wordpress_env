# $1のディレクトリ名を小文字かつ記号なしに
formed_lowercase=$(eval "echo $1 | tr '[:upper:]' '[:lower:]'")
formed_remove_sign=$(eval "echo $formed_lowercase | tr -d _ | tr -d -")

# ソースファイルまで移動する
cd_to_source_file="cd ~/Local\ Sites/$formed_remove_sign/app/public/wp-content/themes"

# mkdir
mkdir="mkdir "$1

# WordPressのテンプレートを準備する
git_clone="git clone https://github.com/9-sho-5/wordpress_original_theme.git "$1

# ソースコードのディレクトリに移動
cd_to_workingtree_dir="cd "$1

# リモートリポジトリの削除
rm_remote_rep="git remote rm origin"

# リモートリポジトリの追加
add_remote_rep="git remote add origin "$2

# open vscode
open_vscode="code ."

# browser立ち上げ
open_chrome="'/Applications/Google Chrome.app/Contents/MacOS/Google Chrome' --new-window"

echo "===================="
echo "move to theme directory"
eval $cd_to_source_file
echo "===================="
echo "make working-tree"
eval $mkdir
echo "===================="
echo "git clone to copy Wordpress original theme"
eval $git_clone
echo "===================="
echo "move to working-tree"
eval $cd_to_workingtree_dir
echo "===================="
echo "re-set git remote url"
eval $rm_remote_rep
eval $add_remote_rep
echo "===================="
echo "open working-tree with VSCode"
eval $open_vscode
echo "===================="
echo "open chrome"
eval $open_chrome
echo "===================="
