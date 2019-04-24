delete () {
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
        echo $user
    done


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
