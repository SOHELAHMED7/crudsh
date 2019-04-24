# crudsh

[![Build Status](https://travis-ci.com/SOHELAHMED7/crudsh.svg?branch=master)](https://travis-ci.com/SOHELAHMED7/crudsh)

[CRUD](https://en.wikipedia.org/wiki/Create,_read,_update_and_delete) to learn basic and widely used bash(GNU Bourne Again SHell) shell scripts snippets. Data stored in plain text file (see [users.txt](users.txt)).

<p align="left"><img src="/asset/crudsh.gif?raw=true"/></p>

 ### Prerequisite
  - Knowledge
    - Not any knowledge of any programming language required but good to have. It's a easy to learn resource for bash beginners.
  - Tools
    - CLI access to any \*nix based OS
  - No dependencies are required but there is one optional development dependency for unit testing - [shUnit2](https://github.com/kward/shunit2) and can be installed in Ubuntu by `sudo apt-get install shunit2`
  - Optional dependency: [tldr-pages/tldr](https://github.com/tldr-pages/tldr) will help you to learn commands more faster and easily


 ### Installation and setup
 1.  `$ git clone https://github.com/SOHELAHMED7/crudsh.git`
 1.  `$ cd crudsh`
 1.  `$ chmod +x index.sh`
 1.  `$ ./index.sh`

 ### Undo installation
  - just delete `crudsh` folder
  - in case shunit2 is installed, hit `$ sudo apt-get purge shunit2`

### Features
 - Validation (kept simple to focus on learning bash)
 - Add, Update, Delete
 - Listing with pagination, searching and sorting
 - Documented

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
 - _Bash is very ancient! Why should I learn_ see [kamranahmedse/developer-roadmap](https://github.com/kamranahmedse/developer-roadmap) and [Master Foo and the Ten Thousand Lines](http://www.catb.org/~esr/writings/unix-koans/ten-thousand.html)


### Testing
 1.  `$ cd test`
 1.  `$ shunit2 main.sh`

### Credits and Thanks
 - [This app is created as exercise provided at shellscript.sh by Steve Parker](https://www.shellscript.sh/exercises.html)
 - [Quick answer given at StackOverflow by mureinik](https://stackoverflow.com/a/55578826/3794786)
 - All links provided in code
 - users.txt is seeded from https://mockaroo.com/
 - gif - https://ezgif.com

### Similar Project/Alternatives
 - https://www.shellscript.sh/exercises.html
 - https://github.com/wlinnp/CRUD-operations-on-text-file
 - [andrewbihl/bsed](https://github.com/andrewbihl/bsed)

### Is it any good?
[Yes](https://news.ycombinator.com/item?id=3067434)
