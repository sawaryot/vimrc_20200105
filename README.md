# vimrc_20200105


## 事前準備

### vimインストール
sudo apt-get install vim

### インストール確認
vim --version | grep -e Huge -e Small -e Normal

### dein.vimダウンロード
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein

### dein.vimインストール
vim .vimrcして以下vimコマンド実行
:call dein#install()
