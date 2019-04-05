# list_with_pagination.sh
list_with_pagination () {
    tac users.txt | egrep -m $1 . | column -t -s:
}
