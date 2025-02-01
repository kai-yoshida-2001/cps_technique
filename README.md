# cps_technique
## branch:mac_setup

### 1.CPS流のMBAセットアップ手順
#### 1.1初回起動時の設定
- Language(言語)
  - English => continue
  
- Select Your Country or Region(国または地域を選択)
  - Japan => continue(続ける)
  
- Text and Voice input Languages(文字入力および音声入力の言語)
  - => continue(続ける)
  
- Accessibility(アクセシビリティ)
  - => Not now(今はしない)
  
- Select Wi-Fi Network(Wi-Fiネットワークを選択)
  - SSID:mse_common
  - PW:m29-c0mm0n => continue(続ける)
  
- Data and Privacy(データとプライバシー)
  - => continue(続ける)
  
- Transition Assist(移行アシスト)
  - => Not now(今はしない)
  
- Sign in with your Apple ID(Apple IDでサインイン)
  - IDとパスワードを使ってサインイン => continue(続ける)
  ＊ここで設定しない場合は'later'(あとで設定)
  
- Terms of Use(利用規約)
  - => Agree(同意する)
  
- Create a computer account(コンピュータアカウントを作成)
  - フルネーム：Kai Yoshida(日本語可)
  - アカウント名：kai(日本語不可)
  - パスワード:覚えやすいもの(4文字以上)
  - ヒント：任意
  - アイコン画像：好きな画像を設定可 => continue(続ける)

＊アカウント名は後から変更できない．
また，Terminalで表示されるアカウント名が長くなると
カッコよくない(個人の感想)ので，
短く設定しておくと良い．
	
- Enable location information(位置情報サービスを有効にする)
  - チェックを入れる => continue(続ける)
  
- Analysis(解析)
  - チェックを外す => continue(続ける)
  
- Screen Time(スクリーンタイム)
  - => later(あとで設定)
  
- Siri
  - チェックを外す => continue(続ける)
  
- Touch ID
  - 指紋認証でログインできるようにする
  
- Select Appearance Mode(外観モードを選択)
  - ライトかダークのどちらかを選択 => continue(続ける)
  ＊おすすめはダーク．．．
  
#### 1.2各ソフトウェアの設定
起動後の画面と現役の先輩が使用しているMBAの画面は大きく異なる．
System Settings(システム環境設定)のUIにおいても大きくことなっているため，一度OSを最新版にアップデートしてUIを共通の状態にすることを推奨する．なお，アップデートにはそれなりの時間がかかるため，アップデート中の時間でレクリエーションでもやるとよろし．(30分以上はかかるでしょうしね)

##### 1.2.1 System Setting(システム環境設定)
- Trackpad Settings(トラックパッドの設定)
  - Search -> Trackpad -> Point & Click 
	- Tracking speed: Fast(Max)
	- Click: Medium
	- Quate Click: ON
	- Force Click and haptic feedback: ON
	- Look up & data detectors: Force Click with One Finger
	- Secondary click: Click Tap with Two Fingers
	- Tap to click: ON
	
  - Trachpad -> Scroll & Zoom
	- Natural scrolling: ON
	- Zoom in or out: ON
	- Smart zoom: ON
	- Rotate: ON
	
  - More & Gestures
	- Swipe between pages: Swipe with Two or Three Fingers
	- Swipe between full-screen applications: Swipe Left or Right with Four Fingers
	- Notification Center: ON
	- Mission Control: Swipe Up with Fingers
	- App Expose: Swipe Down with Three Fingers
	- Launchpad: ON
	- Show Desktop: ON

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
		＊1.キー操作を'Command'と'i'に設定する．
		＊2.上記に設定する前に'Modifier Keys'の変更をしておくことが望ましい
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
	- Use scroll gesture with modifier keys to zoom: ON
  - Shortcut: 以下項目以外はOFF
	- Zoom, Color Filters, Accessibility Keyboard: ON

- Dock Settings(Dockの設定)
  - Search -> Dock -> Desktop & Dock
  - Size: 'Small'よりに約10％くらいの大きさ
  - Magnification: OFF
  - Position on screen: Left
  - Minimize windows using: Genie Effect
  - Double-click a window's title bar to: Zoom
  - Minimize windows into application icon: OFF
  - Automatically hide and show the Dock: ON
  - Animate opening applications: OFF
  - Show indicators for open applications: ON
  - Show suggested and recent apps in Dock: OFF
  - Desktop & Stage Manager:
	- Show Items: On DesktopのみON
	- Click wallpaper to reveral desktop: Always
	- Stage Manager: OFF
	- Show recent apps in Stage Manager: ON
	- Show windows from an application: All at Once
  - Widges:
	- 
  - 
  
  
##### 1.2.2 Finder Settings
- Finder.appを起動
  - 画面左上のバナーに表示されている'Finder'(Appleマークの右隣)をクリック -> Settings... -> General(一般)
	- Show these items on the desktop: -> External disks のみチェック
	
	- Finder windows show:アカウント名のフォルダに設定
	
  - Sidebar(サイドバー)
	- Appllications, Downloads, Home(アカウント名のフォルダ)：3つのみにチェック
	＊頻繁にUSBメモリやSDカード等を使う場合には'Location'の中にある'External disks'にもチェックを入れておくと良い

  -
	

### reference
- https://docs.google.com/document/d/1643S_JMsHVVNLv68HBaF3Goanjzwg_A301Sueou6FA4/edit?usp=drive_link
- https://github.com/tomo-cps/mac-setup

### 最終更新日
2025/02/01(土) 18:30
