#!/bin/bash

# trap is kind of event hook. If user press Ctrl + c then callback is called
# trap "callback" 2
# exit
filename="users.txt"
# echo ${filename}
# export filename

. ./src/add.sh
. ./src/validation.sh
. ./src/list_all.sh
. ./src/quit.sh
. ./src/show_menu.sh
. ./src/take_menu_input_from_user.sh

# popo_po
# popo_po()
# {
#     echo "you pressed ctrl + c"
#     # mkdir dd5555
# }


# read pp

# echo "pp"
# sleep 55


if [[ ! -f $filename ]]; then
    echo "Creating $filename ..."
    touch $filename
# else
#     pwd
#     echo "yes file"
fi


show_menu

# show_menu_result="$(showmenu)"
# export $show_menu_result

take_menu_input_from_user
