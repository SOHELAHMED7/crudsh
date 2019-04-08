# list_with_pagination.sh
# $1 $per_page_user

list_with_pagination () {
    page_number_for_offset=$( expr "$page_number" '-' 1 )
    offset=$( expr "$per_page_user" '*' "$page_number_for_offset" )
    offset_plus_one=$( expr "$offset" '+' "1" )

    if [[ -n $search_query ]]; then
        total_user=`grep "$search_query" $filename | wc -l`
    else
        total_user=`grep -cv ^$ $filename`
    fi

    if [[ $offset_plus_one -gt $total_user ]]; then
        echo "No further users to show"
        page_number=$(expr "$page_number" '-' 1)
        take_menu_input_from_user
    fi

    if [[ $offset_plus_one -lt 1 ]]; then
        echo "No previous users to show"
        page_number=$(expr "$page_number" '+' 1)
        take_menu_input_from_user
    fi

    end_number=$( expr "$offset" '+' "$per_page_user" )

    hs=`header_string`
    echo -e $hs

    # user_found=`tac $filename | egrep -m $1 . | column -t -s: | wc -l`
    # end_number=$( expr "$offset" '+' "$user_found" )

    # tac $filename | egrep -m $1 . | column -t -s: > sed -n '"$offset_plus_one","$end_number"p'

    grep "$search_query" $filename  | `echo $sort` | column -t -s: | sed -n "$offset_plus_one","$end_number"p

    user_found=`grep "$search_query" $filename | sed -n "$offset_plus_one","$end_number"p | wc -l`
    end_number=$( expr "$offset" '+' "$user_found" )


    echo -e "\nShowing $offset_plus_one - $end_number ($user_found) users from "$total_user" (page number: $page_number of `ceiling_divide $total_user $per_page_user`) (per-page: $per_page_user) "
}
