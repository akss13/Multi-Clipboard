#!/bin/bash
function driver() {
    temp_dir="/.local/tmp/multi-clipboard"
    working_dir="${HOME}${temp_dir}"
    xclip -o>"$working_dir"/3
}
driver