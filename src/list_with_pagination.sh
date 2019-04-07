# list_with_pagination.sh
# $1 $per_page_user

list_with_pagination () {



    page_number_for_offset=$( expr "$page_number" '-' 1 )
    offset=$( expr "$per_page_user" '*' "$page_number_for_offset" )
    offset_plus_one=$( expr "$offset" '+' "1" )

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

    tac $filename  | column -t -s: | sed -n "$offset_plus_one","$end_number"p
    user_found=`tac $filename  | column -t -s: | sed -n "$offset_plus_one","$end_number"p | wc -l`
    end_number=$( expr "$offset" '+' "$user_found" )


    echo "showing $offset_plus_one - $end_number ($user_found) users from "$total_user" (page number: $page_number) (per-page: $per_page_user) " # TODO add pager and per-page result properly
}

# non empty line count of a file
# grep -c '.' $filename
#

# todo show summary
# show pagination like
# p | f | p2 | p3 | ... | p9| p10 ... | p11 | p12 | l | n
