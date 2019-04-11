./src/validation.sh

add() {
    add_name
    add_email
    add_phone

    echo $name_added:$email_added:$phone_added >> $filename
    echo -e "\nSuccessfully added\n"
}

add_name() {
    echo "Enter name: "
    read name

    opn="add_name"

    validate_empty "$name" "$opn"
    validate_colon "$name" "$opn"
    validate_duplicate "$name" "$opn"

    name_added=$name
}

add_email () {
    echo "Enter email: "
    read email

    opn="add_email"

    # pass variables in double quotes and variables with empty value are completely neglected
    validate_empty "$email" "$opn"
    validate_email_with_regex "$email" "$opn"

    email_added=$email
}

add_phone() {
    echo "Enter phone: "
    read phone

    opn="add_phone"

    validate_phone_with_regex "$phone" "$opn"

    phone_added=$phone
}
