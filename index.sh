#!/bin/bash

# variable declared like below are global variable, can be used as $filename in all below loaded files
filename="users.txt"

# instead of writing a lot of code in single file, divide it in separate file and include here like autoloading in PHP
. ./src/add.sh
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

# TODO test
if [[ ! -r $filename ]]; then
    echo "No read permission $filename ..."
    exit 1
fi

# TODO test
if [[ ! -w $filename ]]; then
    echo "No write permission $filename ..."
    exit 1
fi

# show user list during app bootstrap process
list_with_pagination $per_page_user

show_menu

# take operation number to perform
take_menu_input_from_user
