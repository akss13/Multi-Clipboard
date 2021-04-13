#!/bin/bash
function driver() {
    temp_dir="/.local/tmp/multi-clipboard"
    working_dir="${HOME}${temp_dir}"
    if [ ! -d ${working_dir} ]; then
        mkdir $working_dir -p
    fi
    xclip -o >"$working_dir"/3
}
driver

