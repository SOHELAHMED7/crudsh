validate_duplicate() {
    # if [[ `grep -i $1: $filename | wc -l` -ne 0 ]]; then
    find_user_record_count_by_name "$1" "$filename"

    # $? is return value/exit status of last executed statement
    if [[ $? -ne 0 ]]; then
        echo "No duplicate name allowed"
        $2
    fi
}

validate_colon() {
    if [[ $1 == *":"* ]]; then
        echo "Colon are not allowed in name"
        $2
    fi
}

validate_empty() {
    # echo ${FUNCNAME}
    if [[ ! -n $1 ]]; then
        echo "Name cannot be blank"
        $2
    fi
}

validate_email_with_regex() {
    pattern="^[a-z]+@[a-z]+\.[a-z]+$" # simple email validation
    if [[ ! $1 =~ $pattern ]]; then # this is how (one of few ways)
                                    # regex patterns are matched
        echo "Invalid email"
        $2
    fi
}

validate_phone_with_regex() {
    pattern="^[0-9]{1,10}$" # simple phone validation
    if [[ ! $1 =~ $pattern && -n $1 ]]; then
        echo "Invalid phone"
        $2
    fi
}

validate_natural_number() {
    pattern="^[0-9]+$" # simple phone validation
    if [[ ! $1 =~ $pattern && -n $1 ]]; then
        echo "Invalid number"
        $2
    fi
}
