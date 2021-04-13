# Multi-Clipboard
Multi-Clipboard enables keyboard driven multiple clipboards. A dirty hack to have multiple clipboards for copy-pasting muliple text based information.
<br>
### <b>Dependencies</b>
```
xclip
```
Install the dependencies as following:
+ Arch: ```sudo pacman -S xclip ```
+ Debian based distro: ```sudo apt install xclip ```
<br><br>

### <b>Installation</b>

#### <b>Method-1</b> 
For linux distros with desktop environment as <b>GNOME</b>.
To install Multi-Clipboard simply clone the repository and execute the driver script as follows:
```bash
./arch_driver.sh
```

#### <b>Method-2</b> 
For Linux distros with WM like <b>i3</b>.<br>
1. Create a ```bin``` directory in ```$HOME```
2. Add its path to ```$PATH``` by adding the lines below to ```.bashrc``` or ```.zshrc```
```
export PATH="$HOME/bin:$PATH"
```
3. Copy the files in ```src``` directory to created bin directory.
4. Create binds for the scripts in the config file of your WM.<br> For example for ```i3```, add these lines to ```$HOME/.config/i3/config``` file.
```
bindsym $alt+1 exec /home/user/bin/shortcut_c1.sh
bindsym $alt+2 exec /home/user/bin/shortcut_c2.sh
bindsym $alt+3 exec /home/user/bin/shortcut_c3.sh
bindsym $alt+4 exec /home/user/bin/shortcut_c4.sh
bindsym $alt+5 exec /home/user/bin/shortcut_c5.sh
bindsym $alt+6 exec /home/user/bin/shortcut_c6.sh
bindsym $alt+7 exec /home/user/bin/shortcut_c7.sh
bindsym $alt+8 exec /home/user/bin/shortcut_c8.sh
bindsym $alt+9 exec /home/user/bin/shortcut_c9.sh

bindsym Shift+$alt+1 exec /home/user/bin/shortcut_v1.sh
bindsym Shift+$alt+2 exec /home/user/bin/shortcut_v2.sh
bindsym Shift+$alt+3 exec /home/user/bin/shortcut_v3.sh
bindsym Shift+$alt+4 exec /home/user/bin/shortcut_v1.sh
bindsym Shift+$alt+5 exec /home/user/bin/shortcut_v2.sh
bindsym Shift+$alt+6 exec /home/user/bin/shortcut_v3.sh
bindsym Shift+$alt+7 exec /home/user/bin/shortcut_v1.sh
bindsym Shift+$alt+8 exec /home/user/bin/shortcut_v2.sh
bindsym Shift+$alt+9 exec /home/user/bin/shortcut_v3.sh

```
+ Here user is ```$USER```
+ Note Remember to set ```alt``` as ```Mod1``` or ```Mod4``` as follows: 
```
set $alt Mod1
```

### <b>Usage</b>
To use Multi-Clipboard follow these steps:
<br><ins>For copying:</ins>
+ Select the text and press 
```
<Ctrl>+C
```
+ Then press
```
<Alt>+1
```
Now the selected text is copied into the <b>first clipboard</b>. <br>
The same can be done for other clipboards.<br>
<br><ins>For pasting:</ins>
+ Press the following keys to select clipboard to paste from, example:
```
<Shift>+<Alt>+1
```
The same can be done for other clipboards.<br>
+ Then paste it wherever you want as follows:
```
<Ctrl>+V
```

### <b>Note:</b>
+ Maximum of 9 clipboards.
