./src/validation.sh # requiring the necessary file

add() {
    add_name # <-- this is function call
    add_email # <-- take email, validate and store in variable email_added
    add_phone

    echo $name_added:$email_added:$phone_added >> $filename # >> will append content at the end of file
    echo -e "\nSuccessfully added\n"
}

add_name() {
    echo "Enter name: "
    read name # <-- take input from user at cli

    opn="add_name" # <-- global variable

    # perform validation first, if failed it will call recursively to add_name
    validate_empty "$name" "$opn"
    validate_colon "$name" "$opn"
    validate_duplicate "$name" "$opn"

    name_added=$name # set global variable to use in other function. NOT recommended but OK for this app to learn bash
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
