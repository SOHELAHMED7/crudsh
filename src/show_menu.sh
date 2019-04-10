show_menu() {
    echo
    echo "Crudsh - CRUD for user data stored in plain file in Bash"
    echo
    echo -e "1. List (default) \t| 8. List All (No Pagination)"

    echo -e "5. Add \t| 6. Edit \t| 7. Delete"

    echo -e "s. Search \t| cs. clear search and Sort"

    echo -e "f. first page \t| n. next page"

    echo -e "p. prev page \t| l. last page"

    echo "c. change the number of users to show per page (natural numbers only)"

    echo "pN. page number (p1 for 1st first page, p2 for second ...)"

    echo -e "ns. Sort Name \t| nsd. Sort Name DESC"

    echo -e "ps. Sort Phone \t| psd. Sort Phone DESC"

    echo "q. Quit"
    echo
}
