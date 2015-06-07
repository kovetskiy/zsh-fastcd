fpath=("$(dirname $0)" $fpath)

autoload -U compinit
compinit

fastcd() {
    local directory=$1
    local maxdepth=$2
    local target=$3

    local destination=$(find "$directory" -name "$target" -type d -print -quit)

    cd $destination
}

