delete () {
    echo "Enter the record name which you want to delete: "
    read name

    if [[ ! -n $name ]]; then
        echo "Name cannot be blank"
        delete
    fi

    user=`find_user_record_by_name "$name" "$filename"`

    if [[ ! -n $user ]]; then
        echo "No such user found! Please try different one "
        delete
    fi

    delete_user_record
}

delete_user_record () {
    # sed -i -e 's/'"$user"'/'""'/' $filename
    sed -i '/'"$user"'/d' $filename
}
