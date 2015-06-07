fastcd() {
    local directory=$1
    local maxdepth=$2
    local target=$3

    local destination=$(
        find "$directory" -maxdepth $maxdepth -name "$target" \
            -type d -print -quit
    )

    cd $destination
}

