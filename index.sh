#!/bin/bash

# fkl=`cat users.txt`
# echo $fkl
# fkl="Name:Email:Phone $fkl"
# cat users.txt | column -t -s:

# exit

# to list menu

# trap "popo_po" 2

filename="users.txt"
# echo ${filename}
# export filename

./src/add.sh
./src/list_all.sh
./src/quit.sh
./src/show_menu.sh

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


. ./take_menu_input_from_user.sh
