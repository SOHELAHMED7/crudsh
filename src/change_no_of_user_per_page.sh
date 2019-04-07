# change_no_of_user_per_page.sh

change_no_of_user_per_page () {
    echo "Enter number: "
    read number

    opn="change_no_of_user_per_page"

    validate_empty "$number" "$opn"
    validate_natural_number "$number" "$opn"

    echo "Changed successfully"
    per_page_user=$number

    # name_added=$name
}
