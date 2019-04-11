header_string () {
    local header_string="\nName\t Email\t\t Phone \n"
    echo $header_string # this is return
}

# @link https://stackoverflow.com/a/12536521/3794786
ceiling_divide() {
    local ceiling_result=$((( $1 + $2 - 1) / $2))
    echo $ceiling_result
}
