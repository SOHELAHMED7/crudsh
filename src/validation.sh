validate_duplicate() {
    find_user_record_count_by_name "$1" "$filename"
    if [[ $? -ne 0 ]]; then # exit value (return value) of last executed statement in bash (0 means success else failure or other condition) (https://stackoverflow.com/questions/7248031/meaning-of-in-shell-scripts)
        echo "No duplicate name allowed"
        $2 # $2 is some function name -> recursive call
    fi
}

validate_colon() {
    if [[ $1 == *":"* ]]; then # wild card matching
        echo "Colon are not allowed in name"
        $2
    fi
}

validate_empty() {
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
    if [[ ! $1 =~ $pattern && -n $1 ]]; then # regex pattern matching
        echo "Invalid phone"
        $2
    fi
}

validate_natural_number() {
    pattern="^[1-9]+[0-9]*$" # simple phone validation
    if [[ ! $1 =~ $pattern && -n $1 ]]; then
        echo "Invalid number"
        $2
    fi
}
