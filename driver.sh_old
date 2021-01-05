#!/bin/bash
function driver() {
    #install xclip
    if [ $(id -u) != 0 ]; then
        echo "Run the script as root!!"
        exit
    else
        sudo apt update
        sudo apt install -y xclip
    fi
    #create local tmp dir
    temp_dir="/.local/tmp/multi-clipboard"
    working_dir="${HOME}${temp_dir}"
    if [ -d ${working_dir} ]; then
        echo "Directory exists"
    else
        mkdir $working_dir -p
    fi
    #create local bin dir
    bin_dir="/.local/bin"
    working_dir_bin="${HOME}${bin_dir}"
    if [ -d ${working_dir_bin} ]; then
        echo "Directory exists"
    else
        mkdir $working_dir_bin -p
    fi
    #export local bin dir
    export PATH="$PATH:$HOME/.local/bin"
    #user input for number of shortcuts
    echo "Enter number of clipboards to have between 1-9"
    read number
    #copy scripts to local bin folder and assign shotcuts
    for ((i = 1; i <= number; i++)); do
        cp "./src/shortcut_c$i.sh" $working_dir_bin
        cp "./src/shortcut_v$i.sh" $working_dir_bin
        python3 ./keyboard_shotcut.py "Copy $i" "shortcut_c$i.sh" "<Alt>$i"
        python3 ./keyboard_shotcut.py "Paste $i" "shortcut_v$i.sh" "<Shift><Alt>$i"
    done
}
driver
