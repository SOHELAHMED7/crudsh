list_all() {
    # sort by order id desc
    # echo -e "\nName\t Email\t\t Phone \n"
    hs=`header_string`
    echo -e $hs

    cat users.txt | column -t -s:
}

