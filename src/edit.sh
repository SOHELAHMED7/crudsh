./src/validation.sh

edit() {
    echo "Enter the record name which you want to edit: "
    read name

    if [[ ! -n $name ]]; then
        echo "Name cannot be blank"
        edit
    fi

    # find_user_record_count_by_name "$name" "$filename"
    user=`find_user_record_by_name "$name" "$filename"`

    # echo $user
    # exit

    if [[ ! -n $user ]]; then
        echo "No such user found! Please try different one "
        # echo "Name cannot be blank"
        edit
    fi

    # if [[ ! $? -ne 0 ]]; then
    #     # echo "No duplicate "$2" allowed"
    #     # add_$2
    #     echo "No such user found! Please try different one "
    #     edit
    # fi

    edit_name "$user"
    edit_email "$user"
    # add_email
    # add_phone

    # echo "Enter phone: "
    # read phone

    # echo $name_added:$email_added:$phone_added >> $filename
    # echo -e "\nSuccessfully edited\n"
}

edit_name() {
    # echo "Enter name: "
    stored_name=`fetch_part "$1" "1"`
    read -e -i "$stored_name" name
    # echo $name
    # exit

    # name=$name
    # echo $name"777"
    # exit

    # if [[ ! -n $name ]]; then
    #     echo "Name cannot be blank"
    #     add_name
    # fi

    opn="edit_name"
    # echo $name
    # echo $opn
    # exit

    validate_empty "$name" "$opn"
    validate_colon "$name" "$opn"

    if [[ ! $name = $stored_name ]]; then
        validate_duplicate "$name" "$opn"
    fi

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
    name_edited=$name
    echo $name_edited
    # exit
    # fi
}


edit_email() {
    stored_email=`fetch_part "$1" "2"`
    read -e -i "$stored_email" email

    opn="edit_email"

    validate_empty "$email" "$opn"
    validate_email_with_regex "$email" "$opn"

    email_edited=$email
    echo $email_edited
    exit
}



# add_email () {
#     echo "Enter email: "
#     read email

#     opn="edit_email"

#     # pass variables in double quotes and variables with empty value are completely neglected
#     validate_empty "$email" "$opn"
#     validate_email_with_regex "$email" "$opn"

#     email_added=$email
# }

# add_phone() {
#     echo "Enter phone: "
#     read phone

#     opn="edit_phone"

#     validate_phone_with_regex "$phone" "$opn"

#     phone_added=$phone
# }

fetch_part () {
    local entity=`echo $1 | cut -d':' -f$2`
    echo $entity
}
