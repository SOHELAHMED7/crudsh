./src/validation.sh

edit() {
    echo "Enter the record name which you want to edit: "
    read name

    while [[ ! -n $name ]]; do
        echo "Name cannot be blank"
        read name
    done

    user=`find_user_record_by_name "$name" "$filename"`

    while [[ ! -n $user ]]; do
        echo "No such user found! Please try different one "
        read name

        while [[ ! -n $name ]]; do
            echo "Name cannot be blank"
            read name
        done

        user=
        user=`find_user_record_by_name "$name" "$filename"`
    done

    edit_name
    edit_email
    edit_phone

    new_user=$edited_name:$edited_email:$edited_phone

    sed -i -e 's/'"$user"'/'"$new_user"'/' $filename # find and replace
    echo -e "\nEdit successful\n"
}

edit_name() {
    echo "Edit name: "
    read -e -i "$name" edited_name # show user pre-filled user name

    opn="edit_name"

    validate_empty "$edited_name" "$opn"
    validate_colon "$edited_name" "$opn"

    if [[ ! $name = $edited_name ]]; then # dont allow duplicate name
        validate_duplicate "$edited_name" "$opn"
    fi
}


edit_email() {
    stored_email=`fetch_part "$user" "2"`

    echo "Edit email: "
    read -e -i "$stored_email" edited_email # show user pre-filled user email

    opn="edit_email"

    validate_empty "$edited_email" "$opn"
    validate_email_with_regex "$edited_email" "$opn"
}

edit_phone() {
    stored_phone=`fetch_part "$user" "3"`

    echo "Edit phone: "
    read -e -i "$stored_phone" edited_phone

    opn="edit_phone"

    validate_phone_with_regex "$edited_phone" "$opn"
}

fetch_part () {
    local entity=`echo $1 | cut -d':' -f$2` # cut is used get a column(field) value from users.txt
    echo $entity # return a value
}
