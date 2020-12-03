# Things to do after installing  ubuntu.
+ Shortkey
    - Change shortkey emoji: 
        Ctrl Shift e -> Super Shift e
    - Move window: Alt+Click -> Super + Click
- [KDE] : Ctrl - alt -k -> none
             : Ctrl - alt - l -> Super + L.
+ Installs sublime if you want.(Find the download link and change xxxx build)
+ Installs Anki.
	 Plugin button replay sound.

+ Installs "bookworm" for reading books.
+ Mac theme for ubuntu:
	https://www.gnome-look.org/p/1241688/
		Choose: McOS-CTLina-Dark
	After install plank, install plank preferences extension
		https://www.gnome-look.org/p/1201564/
		Dark theme for plank

+ Extensions for VsCode:
- Theme: Monokai Pro
- Better Align
- Color Picker
- Live Server
- Material Icon Theme
- Path Intellisense
- VIM
- Rainbow Brackets
-  Surround With
- Git lens
- Make Hidden

- CSS Peek
- HTML CSS Support
- HTML to CSs autocompletion

- Java Extension Pack

Extension ubuntu:
1. AlternateTab
2. Dash to Dock
3. OpenWeather



--- Plugins for VIM
0. Install NeoVim pre-release version.
1. CocInstall
coc-snippets
maybe need: ccls (use snap)
		clangd

--- Install WireGuard

sudo apt install wireguard openresolv

cp the config file to /etc/wireguard/wg0.conf

sudo systemctl start wg-quick@wg0

sudo systemctl status wg-quick@wg0

sudo systemctl stop wg-quick@wg0



###################### Kubuntu ################################
Set shortkey for flameshot

- System Settings:
    Global Theme: Materia Manjaro Dark
    Window Decorations: We10XOS
    Application Style: kvantum
    Iconce: Breeze dark
    Window Management: 
        Task Switcher->Visualization: Grid
        KWin Scripts: Force Blur
    Turns on disk auto-mount feature  

- Clipboard: Ignore selection

- ?Install Widget: Active window control
    /home/colab/.local/share/aurorae/themes/We10XOS/
Latte Settings for Dock:
    [Behavior]
        Position: Top, right and autohide
        Check drag and minimize/maximize active window
        Delay: none
        Uncheck active Kwin edge after hiding
    [Appearance]
    Absolute: 32
    Background: turn on, 100% for each attribute.
    [Effect]
    Animation speed: x3
    [Task]
        Remove task applet.


