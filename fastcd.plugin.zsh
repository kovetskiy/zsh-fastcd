fastcd() {
    local directory=$1
    local maxdepth=$2
    local target=$3
    local fuzzy="false"

    if [ $# -gt 3 ]; then
        local fuzzy="$3"
        local target="$4"
    fi

    local chosen_directory

    local predicate=(-name "$target")
    if $fuzzy; then
        local predicate=(-iname "*${(j:*:)${(s::)target}}*")
    fi

    chosen_directory=$(find \
        "$(eval echo "$directory")" \
        -maxdepth $maxdepth \
        "${predicate[@]}" \
        \( \
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
