# echo "Hi take_menu_input_from_user.sh"

# . ./show_menu.sh

# ./src/add.sh

total_user=`grep -c '.' $filename`
per_page_user=3
page_number=1

take_menu_input_from_user() {
    echo "Enter any operation number"
    read option

    if [[ $option == 1 ]]; then
        echo "List"
        page_number=1
        list_with_pagination $per_page_user
    elif [[ $option == 2 ]]; then
        echo "Search"
    elif [[ $option == 3 ]]; then
        echo "Sort"
    elif [[ $option == 4 ]]; then
        echo "Paginate"
    elif [[ $option == 5 ]]; then
        echo "Add"
        add "$@"
        list_all
    elif [[ $option == 6 ]]; then
        echo "Edit"
        edit "$@"
    elif [[ $option == 7 ]]; then
        echo "Delete"
        delete "$@"
    elif [[ $option == 8 ]]; then
        echo "List All (No Pagination)"
        list_all
    elif [[ $option == "q" ]]; then
        echo "Quit"
        quit
    elif [[ $option == "c" ]]; then
        echo "change the number of users to show per page (natural numbers only)"
        change_no_of_user_per_page
    elif [[ $option == "f" ]]; then
        echo "First page"
        page_number=1
        list_with_pagination $per_page_user
    elif [[ $option == "n" ]]; then
        echo "Next page"
        page_number=$(expr "$page_number" '+' 1)
        list_with_pagination $per_page_user
    elif [[ $option == "p" ]]; then
        echo "Previous page"
        page_number=$(expr "$page_number" '-' 1)
        list_with_pagination $per_page_user
    elif [[ $option == "l" ]]; then
        echo "Last page"
        page_number=`ceiling_divide $total_user $per_page_user`
        list_with_pagination "$per_page_user"
    else
        echo "None matched"
    fi

    # echo "$show_menu_result"
    show_menu
    take_menu_input_from_user
}

# echo $show_menu_result
# take_menu_input_from_user
