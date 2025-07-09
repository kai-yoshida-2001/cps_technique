# cps_technique
## branch:mac_setup

# 1.CPS流のMBAセットアップ手順
## 1.1初回起動時の設定
- Language(言語)
  - English -> continue
  
- Select Your Country or Region(国または地域を選択)
  - Japan -> continue(続ける)
  
- Written and Spoken Languages(文字入力および音声入力の言語)
  - -> continue(続ける)
  
- Accessibility(アクセシビリティ)
  - -> Not now(今はしない)
  
- Select Wi-Fi Network(Wi-Fiネットワークを選択)
  - SSID:mse_common
  - PW:m29-c0mm0n -> continue(続ける)
  
- Data and Privacy(データとプライバシー)
  - -> continue(続ける)
  
- Migration Assistant(移行アシスト)
  - -> Not now(今はしない)
  
- Sign In to Your Apple Account(Apple IDでサインイン)
  - IDとパスワードを使ってサインイン -> continue(続ける)
  - Apple Accountでログイン済みの端末(iPhoneや別のMacなど)で，ログインを承認するかを問われるので，'Agree'
  - 全6桁の数値がログイン済の端末に表示されるので，セットアップ中のMac側で入力する
  - 利用規約に同意する -> 'Agree'
  
  ＊ここで設定しない場合は'later'(あとで設定)
  
- Terms of Use(利用規約)
  - -> Agree(同意する)
  
- Create a computer account(コンピュータアカウントを作成)
  - フルネーム：Kai Yoshida(日本語可)
  - アカウント名：kai(日本語不可)
  - パスワード:覚えやすいもの(4文字以上)
  - ヒント：任意
  - アイコン画像：好きな画像を設定可 -> continue(続ける)

  ＊アカウント名は後から変更できない．
  また，Terminalで表示されるアカウント名が長くなると
  カッコよくない(個人の感想)ので，短く設定しておくと良い．

- iCloud Keychain
  - Would you like to use iCloud keychain on this Mac?
	- Use iCloud Keychain
	- Set up later
	
	＊お好みで選択
	
- Make This Your New Mac
  - -> Customize Settings

- Enable location information(位置情報サービスを有効にする)
  - チェックを入れる -> continue(続ける)
  
- Analysis(解析)
  - チェックを全て外す -> continue(続ける)
  
- Screen Time(スクリーンタイム)
  - => Set Up Later(あとで設定)
  
- Apple Intelligence
  - -> Continue

- FileVault Disk Encryption
  - -> Continue

- Touch ID
  - 指紋認証でログインできるようにする
  - -> Continue
  
- Apple Pay
  - Set Up Later

- Siri
  - チェックを外す -> continue(続ける)
  
- Select Appearance Mode(外観モードを選択)
  - ライトかダークのどちらかを選択 -> continue(続ける)
  ＊おすすめはダーク．．．
  
## 1.2各ソフトウェアの設定
起動後の画面と現役のCPSメンバーが使用しているMBAの画面は大きく異なる．
System Settings(システム環境設定)のUIにも大きくことなっているため，一度OSを最新版にアップデートしてUIを共通の状態にすることを推奨する．なお，アップデートにはそれなりの時間がかかる．

＊記録時点での最新OSは，macOS Sequoia Version 15.3

### 1.2.1 System Setting(システム環境設定)
画面左上のバナーにあるAppleマーク -> Syetem Settings...
- Trackpad Settings(トラックパッドの設定)
  - Search -> Trackpad -> Point & Click -> ON or OFF の設定部分は全てON
	- Tracking speed: Fast(Max)
	- Click: Medium
	- Look up & data detectors: Force Click with One Finger
	- Secondary click: Click Tap with Two Fingers
	
  - Trachpad -> Scroll & Zoom -> 全てON
	
  - Trackpad -> More & Gestures -> ON or OFF の設定部分は全てON
	- Swipe between pages: Swipe with Two or Three Fingers
	- Swipe between full-screen applications: Swipe Left or Right with Four Fingers
	- Mission Control: Swipe Up with Three Fingers
	- App Expose: OFF

- Keyboard Settings(キーボードの設定)
  - Search -> Keyboard
	- Key repeat rate: Fast(Max)
	- Delay until repeat: Short(Max)
	- Adjust keyboard brightness in low light: OFF
	- Keyboard Brightness: OFF or うっすら光る程度
	- Turn keyboard backlight off after inactivity: Never
	- Press 'Globe' key to: Do Nothing (地球儀キーのこと)
	- Keyboard navigation: OFF
	- Keyboard Shortcuts...:
		- Launchpad & Dock: 全てOFF
		- Display: 全てOFF
		- Mission Control: 全てOFF
		- Windows: 全てOFF 
		- Keyboard: 全てOFF
		- Input Sources: Select next source in Input menu をON 
		＊1.キー操作を'Command'と'i'に設定する
		＊2.上記に設定する前に'Modifier Keys'の変更をしておくこと
		- Screenshots: 上から1つ目と3つ目，5つ目をON
		- Presenter Overlay: 全てOFF
		- Services: 全てOFF
		- Spotkight: 全てOFF
		- Accessibility: 全てOFF
		- App Shortcuts: 全てOFF
		- Function Keys: 全てOFF
		- Modifier Keys: 
			- Select keyboard: デフォルトのまま
			- Caps Lock key: Controlに変更
			- Control key: Commandに変更
			- Option key: Optionのまま
			- Command key: Controlに変更
			- Globe key: Globeのまま
	- Text Input: Input Sources -> Edit...
		- 画面左下に表示される'+'をクリックし，
		'Japanese - Romaji'を選択して追加
		- 追加された'Japanese'を選択
			- Input models: 'Hiragana'だけをON(それ以外をOFF)
			- Caps Lock action: Caps Lock
			- Shift key action: Enter Romaji mode
			- Live Conversion: OFF
			- Correct spelling: OFF
			- Windows-like shortcuts: OFF
			- Candidate window:
				- Font: Hiragino Mincho ProN W6
				- Font size: 16
				- Predictive candidates: OFF
				- Convert with punctuation: OFF
			- Romaji layout: U.S.
			- Puctuation: ．and ，
			- "/" key generates: ・(Middle dot)
			- "¥" key generates: ＼(Backslash)
			- Full-width numeral characters: OFF
		- Text Replacements...
			- 予測変換の際に任意の単語を設定できる
			- 例1:かい -> 快
			- 画面左下の'+'をクリックし，
				replace: 置換したい単語のひらがな
				with: 変換後の漢字を指定
			＊研究室メンバーの名前を設定しておくとメールを送るときに便利

- FireWall Settings(ファイヤーウォールの設定)
  - Network -> Firewall ON 

- Machin Name Settings(MBAに名前を設定)
  - General -> About -> Name -> 現在の名前が表示されている箇所を書き換える
  
- Screen Sarver(スクリーンセーバーの設定)
  - Lock Screen -> Start Screen Saver when inactive -> For 1 hour
  
- Energy Conservation Settings(省エネルギー設定)
  - Lock Screen -> Turn display off on battery when inactive -> For 3hour
  - Lock Screen -> Turn display off on power adapter when inactive -> For 3 hour
  
- Spotlight Settings(Spotlightの設定)
  - Spotlight -> チェックを全て外す -> Help Apple Impove Search OFF
  
- Accessibility Settings(アクセシビリティの設定)
  - Search -> Accessibility
  - Zoom: 以下項目以外はOFF
	- Use scroll gesture with modifier keys to zoom -> ON
  - Shortcut: 以下項目以外はOFF
	- Zoom, Color Filters, Accessibility Keyboard -> ON

- Dock Settings(Dockの設定)
  - Search -> Dock -> Desktop & Dock
  - Size -> 'Small'寄りに10 ~ 15％くらいの大きさ
  - Magnification -> OFF
  - Position on screen -> Left
  - Minimize windows using -> Genie Effect
  - Double-click a window's title bar to -> Zoom
  - Minimize windows into application icon -> OFF
  - Automatically hide and show the Dock -> ON
  - Animate opening applications -> OFF
  - Show indicators for open applications -> ON
  - Show suggested and recent apps in Dock -> OFF
  - Desktop & Stage Manager:
	- Show Items: On DesktopのみON
	- Click wallpaper to reveral desktop -> Always
	- Stage Manager -> OFF
	- Show recent apps in Stage Manager -> ON
	- Show windows from an application -> All at Once
	
  - Widges:
	- Show Widgets -> On Desktop のみON
	- Widget style -> Automatic
	- Use iPhone widgets -> OFF
	- Default web browser -> Google Chrome.app 
	
	＊事前にChromeがインストールされている必要がある
	
	- Prefer tabs when opening documents -> In Full Screen
	- Ask to keep changes when closing documents -> ON
	- Close windows when quitting an application -> ON
	- Drag windows to screen to screen edges to file -> OFF
	- Drag windows to menu bar to fill screen -> OFF
	- Hold Option key while dragging windows to file -> OFF
	- Tiled windows have margins -> ON

  - Mission Control:
	- Automatically rearrange Spaces bassed on most recent use -> ON
	- When switching to an application, switch to a Space with open windows for the application -> ON
	- Group windows by application -> OFF
	- Displays have separate Spaces -> ON
	- Drag windows to top of screen to enter Mission Control -> OFF

- Control Center Settings(Control Centerの設定)
  - Search -> Control Center
  - Control Center Modules:
	- Wi-Fi -> Show in Menu Bar
	- Bluetooth -> Show in Menu Bar
	- AirDrop -> Show in Menu Bar
	- Focus -> Don't Show in Menu Bar
	- Stage Manager -> Don't Show in Menu Bar
	- Screen Mirroring -> Show When Active
	- Display -> Don't Show in Menu Bar
	- Sound -> Show When Active
	- Now Playing -> Show When Active
	
  - Other Modules:
	- Accessibility Shortcuts: 全てOFF
	- Battery: 下記項目以外はOFF
		- Show in Menu Bar
		- Show Percentage
		- Show Energy Mode -> When Active
	- Music Recognition: 全てOFF
	- Hearring: 全てOFF
	- Fast User Switching: OFF
		- Show in Menu Bar -> Don't Show
	- Keyboard Brightness: 全てOFF
  - Manu Bar Only:
	- Clock -> Clock Options... -> 
		- Show date -> Always
		- Show the day of the week -> ON
		- Style: Digital
	- Spotlight ~ Weatherまでの項目は全てOFF
	
	- Automatically hide and show the menu bar: Never
	- Recent documents, applications, and servers: 10

### 1.2.2 Terminal Settings(Terminalの設定)
- Terminal.appを起動
  - 画面左上のバナーに表示されている'Terminal'(Appleマークの右隣)をクリック -> Settings... -> General
	- On startup, open: New Window with profile にチェック -> Pro を選択
	- Shells open with -> Default login shell にチェック
	- New windows open with -> Default Profile & Default Working Directory
	- New tabs open with -> Same Profile & Same Working Directory
	- Use 'Command'-'1'key through 'Command'-'9'key to switch tabs -> ON
	
  - Profiles
	- Basic -> Pro を選択し，画面下部にある'Default'をクリック
	- Text:
		- Background: 
			- Color & Effects -> Opacity: 100%
			- Color & Effects -> Blur: 0%
			- Image: No Background Image
		- Font:
			- Change... -> All Fonts -> SF Mono -> Regular -> Fontsize: 16
		- Text:
			- Antialias text -> ON
			- 白色をクリック -> Opacity: 90%
			- Use bold fonts ->  ON
			- Allow blinking text -> ON
			- Display ANSI colors -> ON
		- ANSI Colors:
			- Normal行にある青色をクリック -> 明るめの青色に調整し，Opacity: 100%
		- Cursor:
			- Block -> ON
			- Blink Cursor -> ON
	- Shell:
		- Startup -> Run commandはOFF
		- When the shell exist -> Close the window
		- Ask beforre closing: 
			- Only if there are processes other than the login shell and -> ON
				- screen, tmuxを追記
				
	- keyboard:
		- Use Option as Meta key -> ON
		- Scroll alternate screen -> OFF
	
	- Advanced:
		- Bell: Audio bell -> OFF

- Rosetta機能をOFF
	- Finder -> Applications -> Utilities -> Terminal.appを2本指でタップ -> Gey Info -> 
		- Open using Rosetta -> OFF

### 1.2.3 [Homebrew](https://brew.sh/)をインストール
LaunchpadかFinder内のApplications -> Utilities -> Terminalを起動して，下記のコマンドを入力する．この際，DockにTerminalを追加しておくとよい．
- Launchpad -> Other -> Terminal
- Finder -> Applications -> Utilities -> Terminal

- 下記のコマンドをコピーしてTerminalにペーストし，実行する
~~~
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
~~~

- 次に下記コマンドをコピーしてTerminalにペーストし，実行する．
~~~
echo 'eval $(/opt/homebrew/bin/brew shellenv)' >> ~/.zprofile
eval $(/opt/homebrew/bin/brew shellenv)
~~~

- インストールしたHomebrewのバージョンを確認し，
git，Chrome，emacsをインストールする．
~~~
brew --version
brew install git google-chrome emacs
~~~

- Chromeを開き，CPSのアカウントでログインしたのちに山口研の掲示板を開く
-> 山口研掲示板の'プログラム(個別配布フォルダとGitHubリポジトリ)'より，自分の名前と紐づけられたURLからフォルダへ行き，'key pair'フォルダをダウンロードする．その後，下記のコマンドを実行する．
~~~
# sshの設定
cd; unzip ~/Downloads/key_pair-*.zip; cd Downloads/
mv key_pair ~/.ssh
cd; chmod 700 .ssh
cd .ssh; chmod 600 config; chmod 700 secret; chmod 600 secret/*
cp ~/.ssh/pub/*@ylab.pub ~/.ssh/authorized_keys
~~~

- 本リポジトリをクローンし，コマンド操作を一括で終わらせる．
＊CPSのアカウントでGoogle Driveへアクセスして，検索バーで'hhost.zip'を入力し，
該当ファイルをダウンロードしておくこと
~~~
cd; git clone github:kaimorgn/cps_technique.git
cd cps_technique
git checkout mac_setup
~~~

- screenの設定
~~~
brew info screen # バージョン確認
alias screen='/usr/local/Cellar/screen/5.0.1/bin/screen' >> ~/.zshrc
~~~
＊5.0.1は'screen'のバージョンを示しており，インストールのタイミング次第では
上記コマンド表記では正常に動作しない可能性がある．
なお，ver.5.0.1は2025/07/05時点の最新版である．

### 1.2.3 Finder Settings(Finderの設定)
- Finder.appを起動
  - 画面左上のバナーに表示されている'Finder'(Appleマークの右隣)をクリック -> Settings... -> General
	- Show these items on the desktop: -> External disks のみチェック
	
	- Finder windows show: アカウント名のフォルダに設定
	
  - Sidebar(サイドバー)
	- Appllications, Downloads, Home(アカウント名のフォルダ)：3つのみにチェック
	
	＊頻繁にUSBメモリやSDカード等を使う場合には'Location'の中にある'External disks'にもチェックを入れておくと良い

### 1.2.4 mi Settings(miの設定)
- mi.appを起動してDockに追加(Launchpadからドラッグ&ドロップで可能)
  - 画面左上のバナー(リンゴマークの右隣)に表示されている'mi'をクリック -> Mode Preferences -> Normal -> Display
  - Ruler and Line Number:
	- Ruler -> Display Ruler: OFF
	- Line Number -> Display Each Line Number -> OFF 
	
  -  画面左上のバナーに表示されている'mi'をクリック -> Application Preference -> General
	 - Normal Font -> Select...
		 - Font: Monaco, Size: 16pt

### 1.2.5 SSH Settings(sshの設定)
GitHubとの連携や山口研が保有している仮想マシンへのSSH接続に必要な設定．


＊掲示板は年度で切り替わるため固定のURLは記載しない．

- Shellファイルの編集
~~~
emacs -nw setup.sh
~~~
  - 下記部分を編集
  ~~~
  name='UserName@MachineName' # MBAに設定したユーザ名とマシン名
  mail='XXX.XXXX@cps.akita-pu.ac.jp' # 配属確定後に案内されたCPSアカウント
  ~~~
  - 編集例：
  ~~~
  name='kai@morgan' # kai: ユーザ名，morgan: マシン名
  mail='kai.yoshida@cps.akita-pu.ac.jp' # 快のCPSアカウント
  ~~~

- 上記設定が完了後，shellファイルを実行する．
~~~
./setup.sh
~~~
=> 実行すると，Terminalへ色を付ける設定が記述された設定ファイル".zshrc"を
配置したり，GUI/CLIアプリのインストール，pyenvやscreen，Gitの一部設定が
完了する．

- GitHubにpubキーを設定
~~~
pbcopy < .ssh/pub/*@ylab.pub
~~~

[GitHub](https://github.co.jp/) -> ログイン -> 画面右上のアイコンをクリックし，歯車マークの'settings'をクリック -> 画面右にある'Access'の'SSH and GPG keys'をクリック -> New SSH key 
	- title: ylab
	- key type: 変更なし
	- key: クリップボードで保持している内容を貼り付け -> Add SSH key
	
#### 1.2.6 Emacsの設定
デフォルト設定のままでは，編集画面が見づらい上にキーバインドが異なっている．
そこで，山口先生が作成したEmacsの設定フォルダを配置することで，
扱いやすい設定を反映する．<br>
まず，CPSアカウントでChromeにログインしてGoogle Driveを開く．
次に，検索バーへ"M2.吉田快"と入力し，該当のフォルダを探す．
その後，M2.吉田快 -> マニュアル関連 -> MBAセットアップ まで進み，
dot.emacs.dフォルダがあることを確認する．
そして，dot.emacs.dフォルダをダウンロードする．
ダウンロードが終わったら，下記のコマンドを実行する．
~~~
cd Downloads/
unzip dot.emacs.d-*.zip
cd; rm -rf .emacs.d
mv ~/Downloads/dot.emacs.d ~/.emacs.d
~~~
=> 上記手順を実行することで，設定がEmacsの設定が反映される．

### 1.2.7 D404小型プリンターとG2-621大型プリンターの設定
- D404小型プリンター
	- 画面上部メニューバーの左側にあるAppleマークをクリック -> 
	System Settings ... -> 
	サイドバー下部までスクロールして Printers & Scanners をクリック ->
	Add Printer, Scanner, or Fax...をクリック -> 
	Add Printerウィンドウが立ち上がり，Default タブが開かれる ->
	Name欄に表示された Brother DCP-J987N をクリックして下記を設定
		- Name: Brother DCP-J987N
		- Location: D404
		- Use: 何も記入しない<br>
	=> 無事に追加できたら適当なファイルを印刷したり，
	紙をスキャンしたりして一通りの操作を体験する
	
	- G2-621大型プリンター
	[Fujifilmのサイト](https://www.fujifilm.com/fb/download/apeos/c6580)から
	Apeos 6580用のドライバをインストールする．<br>
	Apeos C6580 -> Mac OS をクリック -> macOS Sequoia(日本語環境) を選択する．
	＊自身のOS環境に応じて適切なドライバを選択する(OSは常に最新版であると良い)
	
	Mac OS X用プリンタードライバーをクリック -> ダウンロードが見えるまで
	スクロール -> 使用許諾条件に同意しダウンロード<br>
	
	Finder を起動 -> Downloads -> ffmacprnstd*.dmg をクリック -> 
	インストール用のウィンドウが立ち上がる -> 
	Fuji Xerox Print Driver for Mac OS X Installer.pkg を両クリック -> 
	Open -> Continue -> Continue -> Agree -> 
	(Install for all users of this computer を選択して) Continue -> Install ->
	(インストールが完了したら) Close -> Move to trash -> 
	インストール用のウィンドウを閉じる -> デスクトップにある
	「Fuji Xerox Print Driver for Mac OS X Installer.pkg」を両クリック ->
	Eject "Fuji Xerox Print Driver for Mac OS X Installer"<br>
	
	画面上部メニューバーの左側にあるAppleマークをクリック -> 
	System Settings ... -> 
	サイドバー下部までスクロールして Printers & Scanners をクリック ->
	Add Printer, Scanner, or Fax...をクリック -> 
	Add Printerウィンドウが立ち上がり，Default タブが開かれる ->
	IP(地球儀マーク)をクリック -> 下記項目を入力
		- Address: 172.24.48.189
		- Protocol: LPD(Line Printer Daemon)
		- Name: Apeos 6580@G2-621
		- Location: G2-621
		- Use: （Select Softwareをクリックして）
		FX Print Driver for Mac OS X v1.6 または 
		FF Print Driver for Mac OS X v2.2（を選択してOKをクリック）<br>
		=> Add
		- Minimum Passcode Length: 0
		- Customize User Prompts: Display User ID and Account ID Prompts
		- Specify Paper size with Print Job Ticket: Off<br>
	=> 試しに何か印刷してみる

### 1.2.7 Microsoft Office(必要であれば)
- CPS用のGoogleアカウントでDriveへログインし，検索バーで'Microsoft Office'と入力する．
- 検索結果の'Microsoft Office'フォルダをクリック
- フォルダ内にある4つのファイルを全てダウンロードする
- MBAのDownloadsフォルダに入った4つのファイルのうち，'SWDVD5_Office_Mac_Serializer_2019_MLF_X21-88135.ISO'をダブルクリック
- インストローラーを起動し'Installed for all users of this computer'を選択
- 次に，Wordを起動して'Skip signing in to the Office cloud'を選択
  - ＊この際，いくつかのステップで'Agree'を選択する必要がある
- Wordの初回起動時に行った動作をExcel，PowerPointでも同様に実施する

### 1.2.8 特定のAppにおいて日本語表記を適用する
- 画面左上にあるAppleマークから'System Settings'をクリック
- System Settings -> General -> Language & Region -> Applications -> '+'マークをクリック -> ApplcationとLanguageをそれぞれ選択 -> Add
  - ここでApplicationをWord，Languageを日本語 - Japaneseに設定することで，次回起動時から日本語表記が適用される
  - 使用頻度が多いWord，Excel，PowerPoint，VScodeは上記設定をしておくと良い

## 1.3 Windows AppとSSHの練習
### 1.3.1 Windows Appの練習
仮想マシンの画面をMBA側で表示・操作できるようにするためのソフトウェア．
仮想マシンのIPアドレスやユーザ名，パスワード等を設定することで，
仮想マシンの画面をMBA側で操作できるようになる．<br>
今回は山口先生の講義(Python プログラミング2や社会科学データ分析)で
使用される"mse vm"系マシンへ接続する手順を解説する．

- 学籍番号のメールアドレスでChromeを開き，Google Driveを開く
  - 検索バーへ"msevm.txt"と入力して，テキストファイルのビューを開く
  - ファイル内に記載されているIPアドレスやユーザ名，パスワードを控えておく
- Launchpad -> Windows App へ進み，アプリを起動
  - 画面右上にある"+"ボタンをクリックして，"Add PC"を選択する
  - PC name: 先ほど控えたIPアドレスを入力
  - Credentials: -> Ask when required -> Add User Account ... 
	- Username: 先ほど控えたユーザ名を入力
	- Password: 先ほど控えたパスワードを入力 
	＊すでにパスワードを変更している場合は，変更済みのパスワードを入力
	- Friendly name: 直感的にわかりやすい名前にするとよい
		- おすすめの例: m26d003@mse07vm23 # ユーザ名@マシン名で登録
	- => Add
  - Edit PCの画面に戻ったら，Friendly name:を入力する．こちらでは，マシン名で登録すると良い(例: mse07vm23)
  - Displayタブへ移動
	- Color quality: Medium(16 bit)へ変更
	- Save

=> 初回接続時はあれこれ聞かれるが，
ContinueやAgreeといった承認するボタンを選択して良い．

接続に成功して画面が表示されたら，
Terminalを開いて下記のコマンドを入力・実行する．
~~~
ip -4 addr show | grep -oP '\b\d{3}\.\d{2}\.\d{2,3}\.\d{2,3}\b' | grep -v '^127\.' | head -n 1
~~~
=> このとき，SSH接続に必要なIPアドレスが出力されるため，
出力されたアドレスを控えておく．

### 1.3.2 SSHの練習
MBAのTerminalを使って仮想マシンのTerminalを操作する方法を解説する．
今回は，Windos Appの練習時に取得したIPアドレスを使って，
仮想マシンにSSH接続する．
- Dock -> Terminalを起動
  - はじめに，IPアドレスを指定してSSH接続する
  ~~~
  ssh USER_NAME@IP_ADDRESS
  ~~~
  => 接続時にyes/noを求められるので，yesと入力 -> Enter<br>
  => 無事に接続できるとユーザ名やマシン名の内容が変わり，
  テキストの色も緑色に変化している．
  これが確認できたら下記のコマンドを入力してEnter．
  ~~~
  exit
  ~~~
  
  - 次に，SSH接続を簡略化するための設定をおこなう
  まずは，下記のコマンドを入力・実行し，公開鍵を配置する
  ~~~
  scp ~/.ssh/authorized_keys USERNAME@IP_ADDRESS:.ssh/
  ~~~
  - USER_NAME: ユーザ名(学籍番号)
  - IP_ADDRESS: Windows App練習時に取得したIPアドレス

  - 下記コマンドを実行して該当ファイルを編集
  ~~~
  emacs -nw .ssh/config
  ~~~
  - 下記項目を追記
  ~~~
  Host MACHINE_NAME
    Hostname IP_ADDRESS
	User USER_NAME
	Port 22
	LoaclForward XXXXX 127.0.0:3389
	ProxyCommand ssh -W %h:%p abert
  ~~~
  - MACHINE_NAME: mse_vm系で貸し与えられているマシンの名前
  - IP_ADDRESS: Windows App練習時に取得したIPアドレス
  - USER_NAME: ユーザ名(学籍番号)
  - XXXXX: 好きな番号5桁(詳しく解説しないが，この5桁は後々重要なので控えておく)
  - => 上記項目を適切に編集できたら，保存して編集モードから抜ける
  - 編集モードから抜けたら，実際にSSH接続できるか確認する
  ~~~
  ssh MACHINE_NAME
  ~~~
  => 無事に接続できるとユーザ名やマシン名の内容が変わり，
  テキストの色も緑色に変化している．
  これが確認できたら下記のコマンドを入力してEnter．
  ~~~
  exit
  ~~~
  
### 1.3.3 Windows AppとSSH接続の練習
Windows AppとSSH接続を組み合わせることで，
学外からも仮想マシンを画面上で操作できるようになる．
- Windows Appを起動
  - 画面右上にある"+"ボタンをクリックして，"Add PC"を選択する
  - PC name: localhost:XXXXX # XXXXXは先ほど控えておいた任意の数字5桁
  - Credentials: -> Ask when required -> Add User Account ... 
	- ユーザ名とパスワードは先ほど設定したものを使う(選択候補に出てくる)
  - => Add
  
  - Edit PCの画面に戻ったら，Friendly name:を入力するが，
  先ほどと同じにしてしまうとパッと見で違いがわからないため，
  先に設定したものと差別化できる名前を設定する
  (例: mse07vm23 via SSH)
  - Displayタブへ移動
	- Color quality: Medium(16 bit)へ変更
	- Save

- Terminalを起動
  - 仮想マシンへアクセス
  ~~~
  ssh MACHINE_NAME
  ~~~

- Windows Appで直前に設定したPCへ接続(・・・ -> connect) -> Agree
  - 接続できたらOK．
  - MBAのWi-Fi設定を開き，mse_commonからスマホのキャリア通信に切り替えて
  接続できるか試しておくこと．
  
## 1.4 仮想マシンでAIを動かす
### 1.4.1 yolo v5を動かす
~~~
ssh MACHINE_NAME
cd venv; python3 -m venv yolov5_env
source yolov5_env/bin/activate
cd; git clone https://github.com/ultralytics/yolov5
cd yolov5/
pip install -r requirements.txt
ls data/images/
python detect.py --source data/images/bus.jpg --conf 0.5 --weights yolov5s.pt
ls runs/detect/exp/
~~~
=> Results saved to runs/detect/exp<br>
"runs/detect/exp"の中に"bus.jpg"が入っていれば"yolov5"を実行成功．

### 1.4.2 自分の顔写真を画像認識する
山口研HPにあるメンバーの顔写真をダウンロードする
(自分がすでに追加されている場合は，自分の顔写真で試す)．

[山口研究室](https://www.cps.akita-pu.ac.jp) -> About -> members -> 
自分の項目をクリックして写真部分を両クリック -> Save Image As... -> 
ファイル名を"download.jpg"でダウンロード 
-> 下記コマンドを使って写真ファイルを仮想マシンへ複製
~~~
scp ~/Downloads/download.jpg MACHINE_NAME:yolov5/data/
~~~

仮想マシンへ複製後，下記コマンドを使って"yolov5"を実行する．
~~~
ssh MACHINE_NAME
cd yolov5/
python detect.py --source data/images/download.jpg --conf 0.5 --weights yolov5s.pt
~~~
=> Results saved to runs/detect/exp<br>
"runs/detect/exp"の中に"download.jpg"が入っていれば，
自分が用意した画像で"yolov5"を実行成功．

### Other...
本リポジトリには"os_update.sh"がある．
このファイルの該当箇所1点を適切に編集して保存しておけば，
Shellファイル実行時にHomebrewでインストールしたパッケージと
OS最新版の検索・アップデートを一括でおこなえる．編集該当箇所は下記の通り．
~~~
install_update() {
	echo "Now installing..."
	echo "XXXX" | sudo -S softwareupdate -ia -R
}
~~~
=> XXXXの部分を編集する．
具体的には，MBAセットアップに設定したのパスワード記載しておく．
(CPSアカウントのパスワードではないので注意)

### reference
- https://docs.google.com/document/d/1643S_JMsHVVNLv68HBaF3Goanjzwg_A301Sueou6FA4/edit?usp=drive_link
- https://github.com/tomo-cps/mac-setup
- https://qiita.com/yu_uk/items/73654985fb1caeab4cec


### 最終更新日
2025/07/10(水) 01:30
