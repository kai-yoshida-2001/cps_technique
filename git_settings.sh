#!/bin/bash

# 編集必要
git config --global user.name NAME # GitHubに登録したユーザ名に変更
git config --global user.email XXX.XXXX@cps.akita-pu.ac.jp # CPSメールアドレスの名前と苗字を設定

# 編集不要
git config --global core.editor 'emacs -nw'
git config --global init.defaultBranch main
git config --list
