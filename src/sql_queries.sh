# sql_queries
# it is not actual SQL query but will do similar stuffs on file
# like SELECT UPDATE INSERT DELETE ...

find_user_record_count_by_name() {
    count=`grep -i "$1:" $2 | wc -l` # search by name and count
    return $count
}

find_user_record_by_name() {
    local user=`grep -i "$1:" $2`
    echo "$user"
}
