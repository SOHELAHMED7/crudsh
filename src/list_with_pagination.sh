# list_with_pagination.sh

# this is main function for grid
# $1 -> arg -> $per_page_user -> by default - 3

list_with_pagination () {
    # calculation for pagination, per page result
    page_number_for_offset=$( expr "$page_number" '-' 1 )
    offset=$( expr "$per_page_user" '*' "$page_number_for_offset" )
    offset_plus_one=$( expr "$offset" '+' "1" )

    # if search string is non empty, do search
    if [[ -n $search_query ]]; then
        total_user=`grep "$search_query" $filename | wc -l` # total number of user
    else
        total_user=`grep -cv ^$ $filename` # total number of user
    fi

    # prevent user to go to -1 or n+1 page in pagination
    if [[ $offset_plus_one -gt $total_user ]]; then
        echo "No further users to show"
        page_number=$(expr "$page_number" '-' 1)
        take_menu_input_from_user # recursive function call
    fi

    if [[ $offset_plus_one -lt 1 ]]; then
        echo "No previous users to show"
        page_number=$(expr "$page_number" '+' 1)
        take_menu_input_from_user
    fi

    end_number=$( expr "$offset" '+' "$per_page_user" )

    hs=`header_string`
    echo -e $hs

    # search -> sort -> format -> fetch number of users to show on a particular page (page number)
    grep "$search_query" $filename  | `echo $sort` | column -t -s: | sed -n "$offset_plus_one","$end_number"p

    user_found=`grep "$search_query" $filename | sed -n "$offset_plus_one","$end_number"p | wc -l`
    end_number=$( expr "$offset" '+' "$user_found" )

    # summary
    echo -e "\nShowing $offset_plus_one - $end_number ($user_found) users from "$total_user" (page number: $page_number of `ceiling_divide $total_user $per_page_user`) (per-page: $per_page_user) "
}
