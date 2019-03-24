list_all() {
    # sort by order id desc
    # echo -e "\nName Email Phone \n"
    # cat $filename
    cat users.txt | column -t -s:
}
