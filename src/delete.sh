delete () {
    echo "Enter the record name which you want to delete: "
    read name

    if [[ ! -n $name ]]; then # check if $name is empty (-n) (https://ryanstutorials.net/bash-scripting-tutorial/bash-if-statements.php#test)
        echo "Name cannot be blank"
        delete
    fi

    user=`find_user_record_by_name "$name" "$filename"` # function call and storing its return value in "user" global var

    if [[ ! -n $user ]]; then
        echo "No such user found! Please try different one "
        delete
    fi

    read -p "Are you sure? [Y/n]" ans

    if [[ $ans =~ ^(yes|Y|y) ]] || [[ -z $ans ]]; then
        delete_user_record
        echo "Deleted Successfully"
    else
        echo "Aborted"
    fi
}

delete_user_record () {
    sed -i '/'"$user"'/d' $filename # remove that user details line from file
}
