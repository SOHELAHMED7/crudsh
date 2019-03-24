. ./validation.sh

add() {
    # echo "$@"
    # for arg in "$@"; do
    #     echo $arg
    # done

    add_name
    add_email
    add_phone

    # echo "Enter phone: "
    # read phone

    echo $name_added:$email_added:$phone_added >> $filename
    echo -e "\nSuccessfully added\n"
}

add_name() {
    echo "Enter name: "
    read name

    # name=$name
    # echo $name"777"
    # exit

    # if [[ ! -n $name ]]; then
    #     echo "Name cannot be blank"
    #     add_name
    # fi

    opn="name"
    # echo $name
    # echo $opn
    # exit

    validate_empty "$name" "$opn"
    validate_colon "$name" "$opn"
    validate_duplicate "$name" "$opn"

    # if [[ `validate_colon` -eq 1 ]]; then
    #     echo "Colon are not allowed in name"
    #     add_name
    # fi

    # ret=$(find_name $name)

    # if [[ $ret == "duplicate" ]]; then
    #     echo "Duplicate name! please try another one"
    #     add_name
    # else

    # setting global variable (not recommended, but kept for this exercise)
    name_added=$name

    # fi
}

add_email () {
    echo "Enter email: "
    read email

    opn="email"

    # pass variables in double quotes and variables with empty value are completely neglected
    validate_empty "$email" "$opn"
    validate_email_with_regex "$email" "$opn"

    email_added=$email
}

add_phone() {
    echo "Enter phone: "
    read phone

    opn="phone"

    validate_phone_with_regex "$phone" "$opn"

    phone_added=$phone
}
