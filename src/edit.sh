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

    edit_name
    # add_email
    # add_phone

    # echo "Enter phone: "
    # read phone

    # echo $name_added:$email_added:$phone_added >> $filename
    # echo -e "\nSuccessfully edited\n"
}

edit_name() {
    # echo "Enter name: "
    read -e -i "placeholder" name
    echo $name
    exit

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

# add_email () {
#     echo "Enter email: "
#     read email

#     opn="email"

#     # pass variables in double quotes and variables with empty value are completely neglected
#     validate_empty "$email" "$opn"
#     validate_email_with_regex "$email" "$opn"

#     email_added=$email
# }

# add_phone() {
#     echo "Enter phone: "
#     read phone

#     opn="phone"

#     validate_phone_with_regex "$phone" "$opn"

#     phone_added=$phone
# }
