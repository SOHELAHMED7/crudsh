header_string () {
    local header_string="\nName\t Email\t\t Phone \n" # header_string is not a global var
    echo $header_string # this is how to return a value from a function
}

# @link https://stackoverflow.com/a/12536521/3794786
ceiling_divide() {
    local ceiling_result=$((( $1 + $2 - 1) / $2))
    echo $ceiling_result
}
