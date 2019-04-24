#!/bin/bash

# variable declared like below are global variable, can be used as $filename in all below loaded files
filename="users.txt"

# instead of writing a lot of code in single file, divide it in separate file and include here like autoloading in PHP
# call another script from a script: https://stackoverflow.com/questions/8352851/how-to-call-shell-script-from-another-shell-script
. ./src/add.sh # requiring necessary file (like include|require in PHP)
. ./src/edit.sh
. ./src/validation.sh
. ./src/list_with_pagination.sh
. ./src/list_all.sh
. ./src/quit.sh
. ./src/show_menu.sh
. ./src/take_menu_input_from_user.sh
. ./src/sql_queries.sh
. ./src/delete.sh
. ./src/common.sh
. ./src/change_no_of_user_per_page.sh
. ./src/search.sh

if [[ ! -f $filename ]]; then
    echo "Creating $filename ..."
    touch $filename
fi

if [[ ! -r $filename ]]; then
    echo "No read permission $filename ..."
    exit 1
fi

if [[ ! -w $filename ]]; then
    echo "No write permission $filename ..."
    exit 1
fi

# show user list (1. default) during app bootstrap process
list_with_pagination "$per_page_user" # this is function call. list_with_pagination is function name and $per_page_user is its first argument. Ensure to pass it in quote, or else empty value will not consider as argument. For eg $per_page_user is empty string  and $arg2 have some string value then only $arg2 is passed and will be passed as first arg in  list_with_pagination $per_page_user $arg2

# show menu to user at cli
show_menu # function called with no arg

# take operation number to perform relavant operation
take_menu_input_from_user
