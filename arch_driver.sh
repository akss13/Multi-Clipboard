#!/bin/bash
function driver() {
    #install xclip
    # echo "Install xclip"
    #create local tmp dir
    temp_dir="/.local/tmp/multi-clipboard"
    working_dir="${HOME}${temp_dir}"
    if [ -d ${working_dir} ]; then
        echo "Tmp Directory exists"
    else
        mkdir $working_dir -p
    fi
    #create local bin dir
    bin_dir="/bin"
    working_dir_bin="${HOME}${bin_dir}"
    if [ -d ${working_dir_bin} ]; then
        echo "Bin Directory exists"
    else
        mkdir $working_dir_bin -p
    fi
    #export local bin dir
    prefix="/usr/bin/"
    shell_rc=${SHELL#"$prefix"}
    echo "Adding path to end of .$shell_rc""rc--->"
    echo 'export PATH="$PATH:$HOME/bin"' >>.zshrc

    #user input for number of shortcuts
    echo "Enter number of clipboards to have between 1-9"
    read number
    # number=3
    #copy scripts to local bin folder and assign shotcuts
    for ((i = 1; i <= number; i++)); do
        cp "./src/shortcut_c$i.sh" $working_dir_bin
        cp "./src/shortcut_v$i.sh" $working_dir_bin
        python3 ./keyboard_shotcut.py "Copy $i" "bash $working_dir_bin/shortcut_c$i.sh" "<Alt>$i"
    done

    if [ $number -gt 0 ]; then
        python3 ./keyboard_shotcut.py "Paste 1" "bash $working_dir_bin/shortcut_v1.sh" "<Shift><Alt>exclam"
    fi
    if [ $number -gt 1 ]; then
        python3 ./keyboard_shotcut.py "Paste 2" "bash $working_dir_bin/shortcut_v2.sh" "<Shift><Alt>at"
    fi
    if [ $number -gt 2 ]; then
        python3 ./keyboard_shotcut.py "Paste 3" "bash $working_dir_bin/shortcut_v3.sh" "<Shift><Alt>numbersign"
    fi
    if [ $number -gt 3 ]; then
        python3 ./keyboard_shotcut.py "Paste 4" "bash $working_dir_bin/shortcut_v4.sh" "<Shift><Alt>dollar"
    fi
    if [ $number -gt 4 ]; then
        python3 ./keyboard_shotcut.py "Paste 5" "bash $working_dir_bin/shortcut_v5.sh" "<Shift><Alt>percent"
    fi
    if [ $number -gt 5 ]; then
        python3 ./keyboard_shotcut.py "Paste 6" "bash $working_dir_bin/shortcut_v6.sh" "<Shift><Alt>asciicircum"
    fi
    if [ $number -gt 6 ]; then
        python3 ./keyboard_shotcut.py "Paste 7" "bash $working_dir_bin/shortcut_v7.sh" "<Shift><Alt>ampersand"
    fi
    if [ $number -gt 7 ]; then
        python3 ./keyboard_shotcut.py "Paste 8" "bash $working_dir_bin/shortcut_v8.sh" "<Shift><Alt>asterisk"
    fi
    if [ $number -gt 8 ]; then
        python3 ./keyboard_shotcut.py "Paste 9" "bash $working_dir_bin/shortcut_v9.sh" "<Shift><Alt>parenleft"
    fi
}
driver
