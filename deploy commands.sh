#!/bin/bash
# GitHub Pages にデプロイするためのコマンド例
# 事前に GitHub 上で空のリポジトリ（例: vote-counter）を作成しておいてください

# 1. 作業フォルダを作ってファイルを配置
mkdir vote-counter && cd vote-counter
cp /path/to/vote_counter.html ./index.html   # index.html という名前が重要

# 2. Git リポジトリとして初期化してコミット
git init
git add index.html
git commit -m "開票カウンターアプリを追加"

# 3. GitHub のリモートリポジトリに接続してpush
git branch -M main
git remote add origin https://github.com/ユーザー名/vote-counter.git
git push -u origin main

# 4. GitHub Pages を有効化（Web UIで実施）
#    リポジトリ > Settings > Pages > Source を
#    "Deploy from a branch" / branch: main / folder: / (root) に設定
#
# 数分後、以下のURLで公開されます:
# https://ユーザー名.github.io/vote-counter/
