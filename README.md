# Multi-Clipboard
Multi-Clipboard enables keyboard driven multiple clipboards. A dirty hack to have multiple clipboards for copy-pasting muliple text based information.
<br>
### <b>Installation</b>
To install Multi-Clipboard simply clone the repository and execute the driver script as follows:
```bash
./driver.sh
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
The same can be done for clipboards <b>2</b> & <b>3</b>.<br>
<br><ins>For pasting:</ins>
+ Press the following keys to select clipboard to paste from, example:
```
<Shift>+<Alt>+1
```
The same can be done for clipboards <b>2</b> & <b>3</b>.<br>
+ Then paste it wherever you want as follows:
```
<Ctrl>+V
```

### <b>Note:</b>
+ This tool only works with linux distros with desktop environment as <b>GNOME</b>. If you want to make this work with your linux distro or UNIX like distro comment the shortcut assignment at the end of driver script and manually assign shortcuts by yourself as per your distro.
+ I only require 3 clipboards. If your workflow requires more clipboard, make changes accordingly.
