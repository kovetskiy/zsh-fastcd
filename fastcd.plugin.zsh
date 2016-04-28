fastcd() {
    local directory=$1
    local maxdepth=$2
    local target=$3
    local chosen_directory

    chosen_directory=$(find \
        "$(eval echo "$directory")" \
        -maxdepth $maxdepth \
        -name "$target" \( \
            -type d -o -type l \
        \) \
        -print \
        -quit \
    )

    if [ "$chosen_directory" ]; then
        cd "$chosen_directory"
    else
        cd $directory
    fi
}

