# cps_technique
## branch:lect_venv

### 1.venvとは
Python3.3以降のバージョンであればデフォルトで入っている，仮想環境を構築・管理できるコマンドラインツール．
仮想環境の構築や有効化などがコマンドで操作できる．
同様の機能を持つツールとして'Anaconda'が挙げられるが，あちらは年々制約が厳しくなり，無料で利用できる枠が限られているため，'venv'を推奨する．

### 2.導入手順
'Homebrew'でPython3.3以上をインストールした際に導入できるので，
割愛する．

### 3.環境構築と有効化
＊事前に'lect_pyenv'ブランチのREADMEを読み，pyenvの設定が完了していることが望ましい．

ここからは実際に仮想環境を構築していく．
~~~
cd # Homeディレクトリへ移動
mkdir .venv # Homeディレクトリ下に新規ディレクトリを作成
cd .venv # 作成したディレクトリへ移動
python3 -m venv test # 仮想環境を'test'という名前で構築
source ~/.venv/test/bin/activate 仮想環境の有効化
~~~
- 試しにいくつかライブラリをインストールしてみる
~~~
pip install pypdf2 docx
~~~
- サンプルコードにrequirements.txtがある場合のコマンド
~~~
pip install -r requirements.txt
~~~

### 4.その他便利なコマンド
- 学士・修士の卒業やその他重要なタイミングで自分のリポジトリを公開する際，使用していた仮想環境内のライブラリやモジュールを書き出しておくコマンド
~~~
pip freeze > requirements.txt
~~~
- requirements.txtにバージョンが書き出されなかった際に手動で確認するコマンド
~~~
pip show LIBRARY_NAME
~~~

### reference
- https://qiita.com/t_aks/items/70e23807c1ffd747bf24

### 最終更新日
2025/01/31(金) 14:20
