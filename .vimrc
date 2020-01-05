"#####表示設定#####
set number "行番号を表示する
set title "編集中のファイル名を表示
set showmatch "括弧入力時の対応する括弧を表示
syntax on 
set smartindent "オートインデント

"TABキーを押したときにタブ文字の代わりにスペースを入れる
set expandtab
set tabstop=4 "インデントをスペース4つ分に設定
set shiftwidth=4 "インデントをスペース4つ分に

"コピペするときにズレちゃうのを防ぐ
:set paste

if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  " さまざまなデータを共通のインタフェースで操作することを可能にするプラグイン
  call dein#add('Shougo/unite.vim')
  " このカラースキームプラグインはよりコードを見やすく綺麗にしてくれます
  call dein#add('tomasr/molokai')
  " インデントの深さが視覚的にわかりやすくなります
  call dein#add('nathanaelkane/vim-indent-guides')
  " Vimのサイドバーにディレクトリツリーを一覧表示することができるプラグイン
  call dein#add('scrooloose/nerdtree')
  " VimからGitコマンドを実行できるプラグイン
  call dein#add('tpope/vim-fugitive')

  " ・検索系プラグイン
  " 検索結果としてハイライトされる部分を複数残しておくことができます
  call dein#add('vim-scripts/MultipleSearch')
  " 複数の検索結果を異なる色でハイライトすることができる
  call dein#add('t9md/vim-quickhl')
  " ビジュアルモードで選択した文字列を検索することができる
  call dein#add('thinca/vim-visualstar')
  " ファイル名であいまい検索し、そのままVim上で開くことができる
  call dein#add('kien/ctrlp.vim')

  " ・入力系プラグイン
  " HTML / CSSを省略した形で登録しておき、それを後で展開することでコードの記述量を減らす
  call dein#add('mattn/emmet-vim')
  " コードを自動補完してくれる
  call dein#add('Shougo/neocomplete.vim')
  " スニペット機能をVimに追加するためのプラグインで、入力途中でコードを自動で補完してくれます
  call dein#add('Shougo/neosnippet.vim')
  " ペーストしてもインデントがくずれないようになる
  call dein#add('ConradIrwin/vim-bracketed-paste')

  " ・編集系プラグイン
  " ファイルタイプに応じてコメントアウトしたり、コメントアウトの解除をしたりしてくれる
  "call dein#add('tomtom/tcomment_vim')
  " テキストを囲っている括弧（[]、 ()、 {}）、 引用符（'' 、""）、HTMLタグなどの編集ができる
  " 一発で文字列を括弧で囲む、括弧の中身だけ削除する、囲んでいるテキストを置換・削除するといった使い方ができます
  "call dein#add('tpope/vim-surround')
  " 選択したテキストブロックを直感的に移動・複製することができる
  "call dein#add('t9md/vim-textmanip')

  " Vimで線を描画する
  "call dein#add('vim-scripts/DrawIt')
  " Vimの変数を整形して出力してくれる
  call dein#add('thinca/vim-prettyprint/tree')

  " ・文法チェック / シンタックスチェック系プラグイン
  " HTML5の文法チェックをし、問題のある箇所を表示してくれる
  call dein#add('hokaccha/vim-html5validator')
  " シンタックスチェック / 構文チェックをしてくれる
  call dein#add('scrooloose/syntastic')
  " シンタックスチェックを非同期処理で行ってくれる
  call dein#add('osyo-manga/vim-watchdogs')


  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

nnoremap <silent><C-e> :NERDTreeToggle<CR>

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
