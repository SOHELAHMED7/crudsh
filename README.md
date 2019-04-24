# crudsh

[![Build Status](https://travis-ci.com/SOHELAHMED7/crudsh.svg?branch=master)](https://travis-ci.com/SOHELAHMED7/crudsh)

[CRUD](https://en.wikipedia.org/wiki/Create,_read,_update_and_delete) to learn basic and widely used bash(GNU Bourne Again SHell) shell scripts snippets

put gif here TODO

 ### Prerequisite
  - Knowledge 
    - Not any knowledge of any programming language required but good to have
  - Tools
    - CLI access to any \*nix based OS
  - No dependencies are required but there is one optional development dependency for unit testing - [shUnit2](https://github.com/kward/shunit2) and can be installed in Ubuntu by `sudo apt-get install shunit2`
     
 
 ### Installation and setup
 1.  `$ git clone https://github.com/SOHELAHMED7/crudsh.git`
 1.  `$ cd crudsh`
 1.  `$ chmod +x index.sh`
 1.  `$ ./index.sh`
 
 ### Undo installation and setup
  - just delete `crudsh` folder
  - in case shunit2 is installed, ` sudo apt-get purge shunit2`
 
### Features
 - Validation 
 - Add, Update, Delete
 - Listing with pagination, searching and sorting
 
### Order of file/feature to review
 1.  index.sh
 1.  show_menu.sh
 1.  take_menu_input_from_user.sh
 1.  add feature (add.sh with validation and required files within)
 1.  delete feature
 1.  edit feature (validation, common.sh, sql_queries.sh)
 1.  list_all.sh
 1.  list_with_pagination.sh (seach, sort, pagination, per per user )


### Notes
 - developed in bash version 4.4.19(1) and Ubuntu
 - it is very unlikely that this app can be directly fit your app's use case but can be used to learn your own CLI app
 - this is made for education and exercise purpose for bash beginners
 - a CLI app can also be developed by your favorite programming/ framework like Yii, Laravel etc without any knowledge of bash
 
 
### Testing
 1.  `cd test`
 1.  `shunit2 main.sh`

### Credits and Thanks
 - [This app is created as exercise provided at shellscript.sh by Steve Parker](https://www.shellscript.sh/exercises.html)
 - [Quick answer given at StackOverflow by mureinik](https://stackoverflow.com/a/55578826/3794786)
 - All links provided in code

TODO

1. [ ]  validation in feature in readme
1. [ ]  steve stephens
1. [ ]  crud
1. [ ]  education purpose leasrnign (mention clearly purpose and intent)
1. [ ]  simple very well documented - readme
1. [ ]  in code commentng documentation - feature - readme
1. [ ]  create gif
1. [ ]  give all credits
1. [ ]  share on
1. [ ]      twitter
1. [ ]      slack channel
1. [ ]      linkedin
1. [ ]  order of files to go through for eg first index.php then show menu then take input from user then for eg add then validation etc
1. [ ]  similar projects
1. [ ]  its simple and no dependendies
1. [ ]  unit tests (https://github.com/sstephenson/bats)
1. [ ]  master foo link in readme - why should i learn and also not over learn it?
1. [ ]  ref to https://ryanstutorials.net/bash-scripting-tutorial/bash-if-statements.php for if condition
1. [ ]
1. [ ]





is it any good



Order of file/feature to view:
index.sh
show_menu.sh
take_menu_input_from_user.sh
add feature
delete feature
edit feature (validation, common.sh, sql_queries.sh)
list_all.sh
list_with_pagination.sh (seach, sort, pagination, per per user )



function ret
    https://linuxhint.com/return-string-bash-functions/

https://github.com/andrewbihl/bsed




TODO:
DONE pagination string
    DONE next page | prev page per 1 2 3 page records | first page last page
DONE summary
DONE - remove header data storage file
DONE searching
DONE sorting
DONE 1. list Default - add it
DONE menu make it short and readable
DONE gitignore users.txt
DONE code doc
DONE delete confirm
DONE test code index.php read and write permission
DONE unit tests
DONE travis ci build-setup

readme
readme undo process ; just delete folder | bash version | optional dev depend shunit2 for unit test | ubiuntu shunit2 install cmd guide
release - to public and what next,  install,  uninstall, tldr (opt depend)

gif | marketing
