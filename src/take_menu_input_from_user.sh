# take_menu_input_from_user.sh

sort="tac" # name DESC sort by default
total_user=`grep -cv ^$ $filename` # ignore empty lines
per_page_user=3
page_number=1
search_query=""

take_menu_input_from_user() {
    echo "Enter any operation number"
    read option

    if [[ $option == 1 ]]; then
        echo "List"
        page_number=1
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
    elif [[ $option == "n" ]]; then
        echo "Next page"
        page_number=$(expr "$page_number" '+' 1)
    elif [[ $option == "p" ]]; then
        echo "Previous page"
        page_number=$(expr "$page_number" '-' 1)
    elif [[ $option == "l" ]]; then
        echo "Last page"
        page_number=`ceiling_divide $total_user $per_page_user`
    elif [[ "$option" =~ p[1-9]\d* ]]; then
        page_number=${option:1}
        echo "Page number: $page_number"
    elif [[ $option == "s" ]]; then
        echo "Search"
        search
    elif [[ $option == "cs" ]]; then
        echo "Search Sort cleared"
        search_query=
        sort="tac"
    elif [[ $option == "ns" ]]; then
        echo "Name Sorted"
        sort="sort -t: -k 1n"
    elif [[ $option == "nsd" ]]; then
        echo "Name Sorted DESC"
        sort="sort -r -t: -k 1nr"
    elif [[ $option == "ps" ]]; then
        echo "Phone Sorted"
        sort="sort -t: -k 3n"
    elif [[ $option == "psd" ]]; then
        echo "Phone Sorted DESC"
        sort="sort -r -t: -k 3nr"
    else
        echo "None matched"
    fi

    list_with_pagination $per_page_user
    show_menu
    take_menu_input_from_user
}
