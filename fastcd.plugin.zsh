fastcd() {
    local directory=$1
    local maxdepth=$2
    local target=$3

    cd $(find "$(eval echo "$directory")" -maxdepth $maxdepth -name "$target" \
        \( -type d -o -type l \) -print -quit)
}

