list_all() {
    # sort by order id desc
    # echo -e "\nName\t Email\t\t Phone \n"
    hs=`header_string`
    echo -e $hs
    # cat $filename

    cat users.txt | column -t -s:
    # tac users.txt | egrep -m 5 . | column -t -s:
}

