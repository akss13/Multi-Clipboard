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
    #copy scripts to local bin folder
    cp ./src/shortcut_c1.sh $working_dir_bin
    cp ./src/shortcut_c2.sh $working_dir_bin
    cp ./src/shortcut_c3.sh $working_dir_bin
    cp ./src/shortcut_v1.sh $working_dir_bin
    cp ./src/shortcut_v2.sh $working_dir_bin
    cp ./src/shortcut_v3.sh $working_dir_bin
    #assign shotcuts
    python3 ./keyboard_shotcut.py 'Copy 1' 'shortcut_c1.sh' '<Alt>1'
    python3 ./keyboard_shotcut.py 'Copy 2' 'shortcut_c2.sh' '<Alt>2'
    python3 ./keyboard_shotcut.py 'Copy 3' 'shortcut_c3.sh' '<Alt>3'
    python3 ./keyboard_shotcut.py 'Paste 1' 'shortcut_v1.sh' '<Shift><Alt>1'
    python3 ./keyboard_shotcut.py 'Paste 2' 'shortcut_v2.sh' '<Shift><Alt>2'
    python3 ./keyboard_shotcut.py 'Paste 3' 'shortcut_v3.sh' '<Shift><Alt>3'

}
driver
