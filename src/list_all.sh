list_all() {
    # sort by order id desc by default
    hs=`header_string` # "\nName\t Email\t\t Phone \n"
    echo -e $hs

    cat users.txt | column -t -s: # format user list to display at CLI
}

