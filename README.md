# cps_technique
## branch:ubuntu_setup

# 1.OSのインストール
## 1.1 Ubuntu OSの操作
事前にマシンをシャットダウンしておく．
その後，Ubuntu OSが入っているUSBメモリ(部屋長 or 山口先生から拝借)をマシンに差し込み，マシンの電源を入れる．マシンが起動するまで，DELキーを押し続けてBIOS画面を立ち上げる．

## 1.2 BIOS画面の操作
- Advanced modeへ移行 => Bootタブを開く => Boot Option Prioritiesの'#1'と'#2'を入れ替える．

＊1 新規立ち上げの場合，HDDを指定されていることがあるため'USB Flash Disk'を'#1'に指定する．

＊2 起動時の画面(Advanced modeへ移行せず)で変更するには'Boot Priotrity'の下にある選択肢2つ(ubuntu SATA6G 4: と USB Flash Disk)をドラッグして入れ替えることで変更することが可能．

- EzModeへ移行 => Save & Exit => Save Changes & Reset: OK => Try or Install Ubuntu: Enter

＊起動時の画面で変更した場合: Save Changes & Reset: OK => Try or Install Ubuntu: Enter

## 1.3 UI起動後
- Welcome: 言語はEnglishを選択し，Install Ubuntuをクリックして進む
- KeyBoard leyout: 
  => Choose your keyboard layout => English(US)
＊選択箇所は2つあるが，両方English(US)にする

- Updates and other software
  - what apps would you like to install to start with?: 
	=> Normal install
	- Other options: 
	=> Download updates while installing Ubunutu
	
- Installation type: 
  - This computer currently has Ubuntu 22.04.5 LTS on it. What would you like to do?
  => Erase disk and install Ubuntu => Install Now
＊新規立ち上げの場合は，デフォルトでチェックが付いている項目を選択

- Where are you?:
  - Tokyo => Continue
  
- Who are you?:
  - Your name: (例)kai
  - Your computer's name: (例)junin
  - Pick username: (例)kai
  - Choose a password: 覚えやすいもの
  - Confirm your password: 上と同じもの
  
  => Require my password to log in => Continue => restart now
  
## 1.4 OSインストール後
- Please remove the installation medium, then press Enter: 
  => マシンに刺しているUSBメモリを抜き，Enterキーを押す

- Connect Your Online Accounts: 
  => 何も選択せず'Skip'
  
- Enable Ubuntu Pro: 
  => Ubuntu Pro => Skip for now => Next
  
- Help improve Ubuntu: 
  => No, don't send system info => Next
  
- Privacy: 
  => Location Services => OFF => Next
  
- You're ready to go!: 
  => 何も選択せずに'Done'
  
## 1.5 マシンのIPアドレスを取得
- Terminalを起動: 
  ~~~
  $ ip a
  ~~~
  => 表示されるeno1番のIPアドレスを確認: (例)172.28.209.37
  ＊取得したIPアドレスはすぐに確認できる場所(miなど)にメモしておく
  
  ~~~
  $ sudo apt update
  $ sudo apt install -y ssh
  ~~~

# 2.SSH接続
- MBAの画面で操作
- Chromeを開く => Google Drive => 検索バー: hhost.zip => ダウンロード

- Terminalを起動: 
  ~~~
  $ brew install ansible sshpass
  $ ssh IP_Address # 手順1.5で取得したIPアドレスを使用
  ~~~
  => Are you ~ fingerprints?<y/n> => yes
＊接続できたら'Cmd + D'で接続を切る
  
  ~~~
  $ cd ~/.ssh/pub; ls # 自分のMBAをpubkeyを確認
  $ cd ..; cp pub/user_name@ylab.pub ./authorised_keys
  $ cd ~/Downloads; unzip hhost.zip
  $ emacs -nw  do_ansible.sh
  ~~~
  => do_ansible.shの該当部分を編集
  
  ~~~
  current_ip='XXX.XX.XXX.XX' # 手順1.5で取得したIPアドレスを使用
  current_user='User_name' # Ubuntu側で設定したUser_nameで可
  
  ip='172.28.208.2XX' # 2XXは，あらかじめ決められた番号を使用
  ssh_port='22'
  user='User_name' # current_userと統一する
  hostname='Machine_name' # あらかじめ決められたマシン名を使用
  ssh_private_key_file='~/.ssh/secret/User_name@ylab' # User_name部分を自分の名前に変更
  ~~~
  
  ~~~
  ##
  #f_install_packages_for_ubuntu
  #f_install_packages_for_macos
  
  ##
  #f_init_ping # for Debug
  #f_init
  
  ##
  #f_setup_ping # for Debug
  #f_setup
  
  ##
  #f_print_ssh_config
  ~~~

上から順に#(コメントアウト)を外して，実行を繰り返す．
(f_install_packages_for_ubuntu ~ f_print_ssh_configを順番に実行するイメージ)

＊MBAから'do_ansible.sh'を実行できない場合は，GPUサーバ同士でやり取りする必要があるため，すでにSSH接続できる先輩に立ち会ってもらうと良い．

# 3.ソフトウェアのインストール
## 3.1 Google Chromeのインストール: 
  ~~~
  # パッケージの取得
  $ wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
  
  # インストール
  $ sudo apt install -y ./google-chrome-stable_current_amd64.deb
  
  # 残骸を削除
  $ rm ./google-chrome-stable_current_amd64.deb 
  ~~~
  
## 3.2 Gitのアップデートと設定
部屋長と山口先生が提供している'Ansible'を使えばGitを自動的にインストールしてくれる．しかし，Gitのバージョンによっては一部コマンドが異なる(例えば，Gitのバージョンを確認するためのコマンドが'git --version'なのか'git -v'なのか)ため，個人的には最新版に更新しておくことをオススメする．
  ~~~
  $ git --version # 既存のバージョン確認
  
  $ sudo add-apt-repository ppa:git-core/ppa
  $ sudo apt update
  $ sudo apt upgrade -y
  
  $ git -v # バージョンが変わったかを確認
  ~~~
  
  ~~~
  $ git config --global user.name XXXX
  $ git config --global user.email XXX.XXXX@cps.akita-pu.ac.jp
  
  $ git config --global core.editor 'emacs -nw'
  $ git config --global init.defaultBranch main
  
  $ git config --list
  ~~~
  
## 3.3 pyenvのインストール: 
  ~~~
  $ sudo apt update
  $ sudo apt install -y make build-essential libssl-dev zlib1g-dev \
	  libbz2-dev libreadline-dev libsqlite3-dev curl \
	  libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev \
	  libffi-dev liblzma-dev
	  
  $ git clone https://github.com/pyenv/pyenv.git ~/.pyenv
  
  $ echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
  $ echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
  $ echo 'eval "$(pyenv init --path)"' >> ~/.bashrc
  $ echo 'eval "$(pyenv init -)"' >> ~/.bashrc
  
  $ exec $SHELL
  ~~~

# 4.マジックパケットの設定
## 4.1 BIOS画面
GPUサーバの電源を落とす => 電源を入れる&DELキーを押し続けてBIOSを立ち上げる => Advanced Modeへ移動 => Advanced タブを開く => 
	- NetWork Stack Configuration => 
		- Network Stack: Enabled ＊変更すると新たに2つの選択肢が出現する
		- IPv4 PXE Support: Enabled
	- APM Configuration
		- Power On By PCI-E: Enabled

=> EzModeへ移動 => Save & Exit => Save Chenges & Reset: OK

## 4.2 必要なパッケージのインストール
~~~
$ sudo apt update
$ sudo apt install -y net-tools ethtool network-manager 
~~~

## 4.3 インターフェース名とMACアドレスの確認
~~~
$ ifconfig

# もしくは

$ ip link show 
~~~

=> インタフェース名: eno1
=> MACアドレス: ff:ff:ff:ff:ff:ff

＊ffにはそれぞれ独自の数字とアルファベットが記載される

## 4.4 Wake on Lanの設定確認
~~~
$ sudp ethtool eno1 | grep -i wake-on
~~~
=> Supports Wake-on: pumbg
=> Wake-on: g
となればOK(?)

## 4.5 Wake on Lanの永続化
### 4.5.1 有線接続名の確認
~~~
$ nmcli con show
~~~
=> eno1のような名前を含む行の1列目の値が表示されればOK(?)
=> 何も表示されなかった場合は4.5.2へ進む

### 4.5.2 有線接続名が表示されない場合の対処
~~~
$ sudo mv /etc/NetworkManager/conf.d/10-globally-managed-devices/conf \
/etc/NetworkManager/conf.d/10-glogally-managed-devices.conf_orig

$ sudo touch /etc/NetworkManager/conf.d/10-globally-managed-devices.conf
$ sudo systemctl restart NetworkManager
$ sudo nmcli dev set eno1 managed yes
~~~

~~~
$ nmcli con show
~~~
=> 有線接続名が「eno1」と表示される

＊10-globally-managed-devices/conf がそもそも存在していなかった場合には，2つ目のコマンドから順番に実施すれば良い．

### 4.5.3 Wake on Lanの設定
~~~
$ nmcli c show 'eno1' | grep -i wake-on-lan # 
$ sudo nmcli c modify 'eno1' 802-3-ethernet.wake-on-kan magick
$ nmcli c show 'eno1' | grep -i wake-on-lan # 
~~~

### 4.5.4 iptablesの設定(/etc/init.d/my_iptables_on.shを編集)
~~~
$ sudo su
$ cd /etc/init.d/
$ emacs -nw my_iptables_on.sh
~~~

~~~
## Wake on Lan
iptables -A OUTPUT -p --dport 9 -j ACCEPT
~~~

- 編集が終わったら
~~~
$ ./my_iptables_on.sh
~~~

# 5.クライアントの設定
## 5.1 パッケージのインストール
~~~
# Ubuntu
$ sudo apt update && sudo apt install wakeonlan

# macOS
$ brew install wakeonlan
~~~

## 5.2 マジックパケットの送信
手順4.3で取得したMACアドレスを使用する
~~~
$ wakeonlan ff:ff:ff:ff:ff:ff
~~~

## 5.3 サーバへのマジックパケットの到達確認
~~~
$ sudo tcpdump proto 0x0842 or udp port 9 -i eno1
~~~
=> 出力が確認できればOK(?)

## 解決する問題
- 手順5.3において，出力が確認できなかった．下記コマンドでは出力が得られたが，マジックパケットを受け取れていないと考えられる．
  ~~~
  $ sudo tcpdump -i eno1 port 9 or ether dst ff:ff:ff:ff:ff:ff
  $ sudo tcpdump -nn -e -i eno1 ether dst ff:ff:ff:ff:ff:ff
  ~~~

- 確認に必要なコマンドを管理
~~~
# Wake on Lanの設定確認
$ sudo ethtool eno1 | grep -i wake-on

# 有線接続名の確認
$ nmcli c show

# Wake on Lanの設定確認
$ nmcli c show 'eno1' | grep -i wake-on-lan

# マジックパケットの確認
$ wakeonlan 

# マジックパケットの到達確認
$ sudo tcpdump proto 0x0842 or udp port 9 -i eno1
~~~

# reference
- Chrome: https://qiita.com/R61/items/2d29158b29c2bc4e95b1
- Git: https://qiita.com/cointoss1973/items/1c01837e65b937fc0761
- pyenv: https://qiita.com/middle_aged_rookie_programmer/items/0eb574e92a52c923e7ec
