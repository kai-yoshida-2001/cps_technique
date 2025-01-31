# cps_technique
## branch:lect_pyenv

### 1.pyenvとは
Pythonのバージョン管理ができるコマンドラインツール．
Pythonは別のバージョンを複数同時にインストールしておくことが可能．
複数インストールされているバージョンをひと目で確認したり，インストールやアンインストール，バージョンの切り替えが簡単にできるツールとなっている．

なお，pyenvができるのは複数インストールしたPythonのバージョン管理のみで，
仮想環境におけるライブラリやモジュールのバージョン管理はできない．
よって，仮想環境の構築・管理用のツールが必要となり，その候補として'venv'が挙げられる．なお，'venv'の解説や導入手順については他ブランチ（lect_venv）でしているので，そちらを参照すること．

### 2.導入手順(MBA.ver)
前提として，Mac Book Airに'Homebrew'がインストールされている必要がある．
なお，'Homebrew'のインストール手順については，'mac_setup'ブランチを参照すること．

#### 2.1pyenvをインストール
~~~
brew update
brew upgrade
brew install pyenv
pyenv -V
~~~
インストール後，Homeディレクトリ下にある隠しファイル'.zshrc'を
emacsで呼び出し，必要な要素を追記する．
~~~
emacs -nw ~/.zshrc
~~~
- 要素
~~~
# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
~~~

要素を追記したのち，編集結果を反映させる．
~~~
source ~/.zshrc
~~~

#### 2.2Pythonをインストールする
実際にバージョンを指定してPythonをインストールする．
~~~
# 記録時点では3.13.1が最新であり，3.10.12はPP2で使用していたバージョンである
pyenv install 3.10.12 
~~~

インストールしたバージョンを確認する．
~~~
pyenv versions
~~~

#### 2.3バージョン管理
使用しているPCにおいて，全てのディレクトリで有効なバージョンを指定する．
~~~
pyenv global 3.10.12 # 全てのディレクトリで有効なバージョンを指定
python -V # バージョンの確認
~~~

次に，任意のディレクトリ下において有効なバージョンを指定する．
~~~
mkdir test # 任意のディレクトリを作成
cd test # ディレクトリへ移動
pyenv local 3.13.1 # 対象ディレクトリ内におけるバージョンの指定
python -V # バージョンの確認
~~~

global：PC全体・どのディレクトリにおいても有効なバージョンを指定できる

local：特定のディレクトリ下（上記手順では'test'）でのみ有効なバージョンを指定できる

### 3.install手順(Ubuntu.ver)

### reference
- https://qiita.com/t_aks/items/70e23807c1ffd747bf24
