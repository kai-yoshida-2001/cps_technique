# cps_technique
## branch:mac_setup

## 1.CPS流のMBAセットアップ手順
### 1.1初回起動時の設定
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
  
### 1.2各ソフトウェアの設定
起動後の画面と現役のCPSメンバーが使用しているMBAの画面は大きく異なる．
System Settings(システム環境設定)のUIにも大きくことなっているため，一度OSを最新版にアップデートしてUIを共通の状態にすることを推奨する．なお，アップデートにはそれなりの時間がかかる．

＊記録時点での最新OSは，macOS Sequoia Version 15.3


<img width='470' src='./src/macos_version.png' alt='macOS Sequoia Version 15.3'>


#### 1.2.1 System Setting(システム環境設定)
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
	- Mission Control: Swipe Up with Fingers
	- App Expose: Swipe Down with Three Fingers

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
		- 画面下に表示される'+'をクリックし，'Japanese - Romaji'を選択して追加
		- 追加された'Japanese'を選択
			- Input models: 'Hiragana'以外をOFF
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
  - Size -> 'Small'寄りに約10％くらいの大きさ
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
	- Drag windows to screen to screen edges to file -> ON
	- Drag windows to menu bar to fill screen -> OFF
	- Hold Option key while dragging windows to file -> OFF
	- Tiled windows have margins -> ON

  - Mission Control:
	- Automatically rearrange Spaces bassed on most recent use -> ON
	- When switching to an application, switch to a Space with open windows for the application -> ON
	- Group windows by application -> ON
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

#### 1.2.2 Terminal Settings(Terminalの設定)
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

#### 1.2.3 [Homebrew](https://brew.sh/)をインストール
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

- インストールしたHomebrewのバージョンを確認し，gitをインストールする．
~~~
brew --version
brew install git google-chrome emacs
~~~

- Chromeを開き，CPSのアカウントでログインしたのちに山口研の掲示板を開く
-> 山口研掲示板の'プログラム(個別配布フォルダとGitHubリポジトリ)'より，自分の名前と紐づけられたURLからフォルダへ行き，'key pair'フォルダをダウンロードする．その後，下記のコマンドを実行する．
~~~
# sshの設定
unzip ~/Downloads/key_pair-*.zip; mv key_pair ~/.ssh
cd; chmod 700 .ssh
cd .ssh; chmod 600 config; chmod 700 secret; chmod 600 secret/*
cp ~/.ssh/pub/*@ylab.pub ~/.ssh/authorized_keys
~~~

- 本リポジトリをクローンし，コマンド操作を一括で終わらせる．
＊CPSのアカウントでGoogle Driveへアクセスして，検索バーで'hhost.zip'を入力し，
該当ファイルをダウンロードしておくこと
~~~
git clone github:kai-yoshida-2001/cps_technique.git
cd cps_technique
git checkout mac_setup
./app_settings.sh
~~~

- screenの設定
~~~
brew info screen # バージョン確認
alias screen='/usr/local/Cellar/screen/5.0.0/bin/screen' >> ~/.zshrc
~~~
＊5.0.0は'screen'のバージョンを示しており，インストールのタイミング次第では
上記コマンド表記では正常に動作しない可能性がある．
なお，ver.5.0.0は2024/08/28にリリースされており，本リポジトリ制作のタイミング（2025/02/13）時点の最新版である．

#### 1.2.3 Finder Settings(Finderの設定)
- Finder.appを起動
  - 画面左上のバナーに表示されている'Finder'(Appleマークの右隣)をクリック -> Settings... -> General
	- Show these items on the desktop: -> External disks のみチェック
	
	- Finder windows show: アカウント名のフォルダに設定
	
  - Sidebar(サイドバー)
	- Appllications, Downloads, Home(アカウント名のフォルダ)：3つのみにチェック
	
	＊頻繁にUSBメモリやSDカード等を使う場合には'Location'の中にある'External disks'にもチェックを入れておくと良い

#### 1.2.4 mi Settings(miの設定)
- mi.appを起動してDockに追加(Launchpadからドラッグ&ドロップで可能)
  - 画面左上のバナーに表示されている'mi'をクリック -> Mode Preferences -> Normal -> Display
  - Ruler and Line Number:
	- Ruler -> Display Ruler: OFF
	- Line Number -> Display Each Line Number -> OFF 
	
  -  画面左上のバナーに表示されている'mi'をクリック -> Application Preference -> General
	 - Normal Font -> Select...
		 - Font: Monaco, Size: 16pt

#### 1.2.5 ssh Settings(sshの設定)
GitHubとの連携や山口研が保有している仮想マシンへのSSH接続に必要な設定．


＊掲示板は年度で切り替わるため固定のURLは記載しない．
- 'key pair'フォルダをダウンロード後に実行
~~~
./ssh_settings.sh
~~~

- Gitの設定
  - git_settings.shの編集
  ~~~
  emacs -nw git_settings.sh
  ~~~
  - 下記部分を編集
  ~~~
  # 編集必要
  git config --global user.name NAME # GitHubに登録したユーザ名に変更
  git config --global user.email XXX.XXXX@cps.akita-pu.ac.jp # CPSメールアドレスの名前と苗字を設定
  ~~~
  - 編集例：
  ~~~
  # 編集必要
  git config --global user.name kai-yoshida-2001 # GitHubに登録したユーザ名に変更
  git config --global user.email kai.yoshida@cps.akita-pu.ac.jp # CPSメールアドレスの名前と苗字を設定
  ~~~

- 上記設定が完了後，shellファイルを実行する．
~~~
./git_settings.sh
~~~

- GitHubにpubキーを設定
~~~
pbcopy < .ssh/pub/*@ylab.pub
~~~

[GitHub](https://github.co.jp/) -> ログイン -> 画面右上のアイコンをクリックし，歯車マークの'settings'をクリック -> 画面右にある'Access'の'SSH and GPG keys'をクリック -> New SSH key 
	- title: ylab
	- key type: 変更なし
	- key: クリップボードで保持している内容を貼り付け -> Add SSH key

#### 1.2.6 Microsoft Office(必要であれば)
- CPS用のGoogleアカウントでDriveへログインし，検索バーで'Microsoft Office'と入力する．
- 検索結果の'Microsoft Office'フォルダをクリック
- フォルダ内にある4つのファイルを全てダウンロードする
- MBAのDownloadsフォルダに入った4つのファイルのうち，'SWDVD5_Office_Mac_Serializer_2019_MLF_X21-88135.ISO'をダブルクリック
- インストローラーを起動し'Installed for all users of this computer'を選択
- 次に，Wordを起動して'Skip signing in to the Office cloud'を選択
  - ＊この際，いくつかのステップで'Agree'を選択する必要がある
- Wordの初回起動時に行った動作をExcel，PowerPointでも同様に実施する

#### 1.2.7 特定のAppにおいて日本語表記を適用する
- 画面左上にあるAppleマークから'System Settings'をクリック
- System Settings -> General -> Language & Region -> Applications -> '+'マークをクリック -> ApplcationとLanguageをそれぞれ選択 -> Add
  - ここでApplicationをWord，Languageを日本語 - Japaneseに設定することで，次回起動時から日本語表記が適用される
  - 使用頻度が多いWord，Excel，PowerPoint，VScodeは上記設定をしておくと良いかも...
  
#### 1.2.8 Windows Appの設定
仮想マシンの画面をMBA側で表示・操作できるようにするためのソフトウェア

ここでは仮想マシンのIPアドレスやユーザ名，パスワード等を設定する

XXXX：後ほど追記

### reference
- https://docs.google.com/document/d/1643S_JMsHVVNLv68HBaF3Goanjzwg_A301Sueou6FA4/edit?usp=drive_link
- https://github.com/tomo-cps/mac-setup
- https://qiita.com/yu_uk/items/73654985fb1caeab4cec


### 最終更新日
2025/02/04(火) 11:55
