# search.sh

search () {
    echo "Enter search query: "
    read search_query

    if [[ ! -n $search_query ]]; then
        echo "Search Query cannot be blank"
        search
    fi

    list_with_pagination "$per_page_user"
}
