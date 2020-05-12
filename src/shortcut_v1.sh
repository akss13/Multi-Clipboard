#!/bin/bash
function driver() {
    temp_dir="/.local/tmp/multi-clipboard"
    working_dir="${HOME}${temp_dir}"
    cat "$working_dir"/1 | xclip -selection clipboard -rmlastnl
}
driver