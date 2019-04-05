# echo "Hi take_menu_input_from_user.sh"

# . ./show_menu.sh

# ./src/add.sh

take_menu_input_from_user() {
    echo "Enter any operation number"
    read option

    if [[ $option == 1 ]]; then
        echo "List"
        list_with_pagination 3
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
    else
        echo "None matched"
    fi

    # echo "$show_menu_result"
    show_menu
    take_menu_input_from_user
}

# echo $show_menu_result
# take_menu_input_from_user
