# cps_technique
## branch:lect_overleaf

# 1.OverleafとGitHubの連携
1.1 Overleafへログインし，任意のプロジェクトを開く
＊山口先生から共有されているプロジェクト(例：ipsj tech やplan，midtern，thesisなど)

1.2 左上にある'Home'ボタン(Overleafのロゴマーク)をクリックし，サイドバーを表示させる

1.3 'Sync'の欄にある'Git'をクリックする

1.4 'Clone with Git'というタブが出現したら，コマンドとトークンをコピーする
＊1.トークンは'Generate Token'のような文言が書かれた緑色のボタンをクリックし，生成されたトークンを控えておくこと
＊2.gitコマンドとトークンはこの後の操作で使用するので，miやGoogle Docsなどにメモしてすぐに使用できる状態にしておくこと

Overleafでの操作は終了

# 2. GitHubの設定
2.1 GitHubへログインし，新規でリポジトリを作成する

2.2 'Create a new repository'の中に青文字で'import a repository'と書かれている箇所があるので，そこをクリック

2.3 'Import your project to GitHub'という見出しのページへ遷移するので，下記項目を入力
- The URL for your source repository*
-> 先ほど取得した'git clone'コマンドのURL部分"のみ"を入力する

- Your username for your source repository
-> 参照したページに倣い'git'と入力する

- Your access token or password for your source repository
-> 先ほど取得したトークンを入力する

- Repository name*
-> 任意の名前を設定可能．なお，Overleafで共有されているプロジェクトと紐づいていることがわかる名称にしていることが望ましい．

- Privateにチェックを入れる

- Begin import

- しばらくローディングしたあと，作成されたリポジトリへ遷移できる青文字が表示されるのでそちらをクリックする

# 3.MBAでリポジトリをクローンする
3.1 MBAでTerminalを開き，先ほど取得したgitコマンドを入力する
~~~
$ git clone XXXXX
~~~
パスワードを聞かれるので，先ほど取得したトークンを入力する．

＊このとき，c-cでコピーしてクリップボードにトークンが保持されていればc-vでペーストするだけでよい．もし，直接入力する場合には，Terminal上で入力情報は表示されないので注意．

3.2 GitHub上のリポジトリとリモートリポジトリとして設定
~~~
$ git remote add github https://github.com/XXXXX
$ cd YOUR_DIRECTORY
~~~

XXXXX以降は，GitHubに登録したユーザ名と作成したリポジトリの名前を記載する．
なお，リポジトリを作成したのちに表示される'<> code'ボタンをクリックすると，cloneする際に使用できるURLを取得できるので，そちらをクリックした方が早い．

以上

# 4.変更を反映させる
Overleafで編集した内容をローカル(MBA)とリモート(GitHub)に反映させる手順を記録する

4.1 Overleaf上で何かしらの編集を加えたのちに'recompile'する

4.2 MBA側のTerminalで変更情報を取得する
~~~
$ git pull origin master
~~~

4.3 MBAで取得した情報をGitHubへ反映させる
~~~
$ git push github master
~~~

OverleafとGitHubを連携するために必要な設定は以上である．
Overleafで文書を編集した後は，MBAのTerminalを使って情報をGitHubへ反映させておけば，簡単にバックアップを管理できる．＊手順4.1~4.3を繰り返すということ

また，Gitの特性上新たに作成したブランチを使って管理する手法もあるが，まずは上記の手法と手順に慣れてもらいたい．

# reference
- https://mti-lab.github.io/blog/2024/12/13/overleaf_git.html

