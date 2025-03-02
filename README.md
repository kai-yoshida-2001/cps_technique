# cps_technique
## branch:ubuntu_setup

# 1.OSのインストール
## 1.1 Ubuntu OSの操作
事前にマシンをシャットダウンしておく．
その後，Ubuntu OSが入っているUSBメモリ(部屋長 or 山口先生から拝借)をマシンに差し込み，マシンの電源を入れる．マシンが起動するまで，DELキーを押し続けてBIOS画面を立ち上げる．

## 1.2 BIOS画面の操作
- Advanced modeへ移行 => Bootタブを開く => Boot Option Prioritiesの'#1'と'#2'を入れ替える
．
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
  => 表示されるeno1番のIPアドレスを確認: (例)172.28.209.3X
  ＊取得したIPアドレスはすぐに確認できる場所にメモしておく
  
  ~~~
  $ sudo apt update
  $ sudo apt install ssh -y
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

＊MBAから'do_ansible.sh'を実行できない場合は，GPUサーバ同士でやり取りする必要があるため，初めてGPUマシンを設定する際にはすでにSSH接続できる先輩に立ち会ってもらうと良い．

# 3.ソフトウェアのインストール

# 4.マジックパケットの設定

# reference
