create_db() {
    # 1 - database name
    sudo mariadb -e "CREATE DATABASE IF NOT EXISTS ${1}"
}


create_t() {
    # 1 - database name to use
    # 2 - table name
    # 3 - content
    sudo mariadb -D "${1}" -e "CREATE TABLE IF NOT EXISTS ${2} (${3})"
}
