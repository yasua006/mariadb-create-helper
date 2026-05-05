#!/bin/sh

. ./create.sh
. ./modules/handler.sh


show_all_databases() {
    mariadb -e "SHOW DATABASES"
}


show_specific_db_tables() {
    # 1 - database name to use
    mariadb -e "USE ${1}; SHOW TABLES"
}


main() {
    while true; do
        show_all_databases
        echo

        echo "1a. Create a database"
        echo "1b. Create a table"
        echo "2. Show specific database tables"

        echo "99. Quit program"

        echo
        echo "Enter option: "
        read -r option

        handle_options
    done
}

main
