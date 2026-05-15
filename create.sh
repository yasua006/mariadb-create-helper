create_db() {
    # 1 - database name
    sudo mariadb -e "CREATE DATABASE IF NOT EXISTS ${1}"
}


create_t() {
    # 1 - database name to use
    # 2 - table name
    # 3 - content
    sudo mariadb -D ${1} -e "CREATE TABLE IF NOT EXISTS ${2} (${3})"
}


create_primary_id_t() {
    # 1 - database name to use
    # 2 - table name
    # 3 - id column name
    # 4 - other content
    
    id_name=${3}

    if [ -z ${3} ]; then
        id_name="id"
        echo "Defauling to $id_name..."
        echo
    fi

    sudo mariadb -D ${1} -e "CREATE TABLE IF NOT EXISTS ${2} ($id_name INT AUTO_INCREMENT PRIMARY KEY,
    ${4})"
}
