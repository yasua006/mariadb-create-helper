#!/bin/sh

. ./create.sh
. ./modules/handler.sh


show_all_databases() {
    sudo mariadb -e "SHOW DATABASES"
}


show_specific_db_tables() {
    # 1 - database name to use
    sudo mariadb -D ${1} -e "SHOW TABLES"
}


show_all_from_table() {
    # 1 - database name to use
    # 2 - table name to show

    $(sudo mariadb -D ${1} -e "SELECT 1 AS non_empty FROM ${2} LIMIT 1")

    echo 
    echo "Columns: $(sudo mariadb -D ${1} -e "DESC ${2}")"
    echo "Rows:"
    sudo mariadb -D ${1} -e "SELECT * FROM ${2}"
}


main() {
    while true; do
        show_all_databases
        echo

        echo "1a. Create a database"
        echo "1b. Create a table"

        echo "2. Show all tables from specific database"
        echo "3. Show all content from specific table"

        echo "99. Quit program"

        echo
        echo "Enter option: "
        read -r option

        handle_options
    done
}

main
