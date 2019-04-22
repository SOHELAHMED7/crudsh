#!/bin/bash

. ./../src/common.sh
. ./../src/sql_queries.sh

oneTimeSetUp() {
    user="zx"
    filename="data/users_test.txt"
}

# testEquality() {
#     assertSame 1 1
# }

testCeiling_divide() {
    local res=`ceiling_divide 10 3`
    assertSame "$res" 4
}

# testDelete_user_record() {
#     # assertEquals 1 1
#     # content=`echo $filename`
#     total_line=`cat $filename | grep -cv ^$ $filename`
#     assertSame 8 "$total_line"
#     `delete_user_record`
#     assertSame 7 "$total_line"
# }

testFind_user_record_count_by_name() {
    local res=$(find_user_record_count_by_name "zx" "$filename")
    assertSame "$res" 1
    # assertSame "$filename" "data/users_test.txt"
}
