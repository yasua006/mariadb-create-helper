create_db() {
    # 1 - database name
    mariadb -e "CREATE DATABASE IF NOT EXISTS ${1}"
}


create_t() {
    # 1 - database name to use
    # 2 - table name
    # 3 - content
    mariadb -e "USE ${1}; CREATE TABLE IF NOT EXISTS ${2} (${3})"
}
