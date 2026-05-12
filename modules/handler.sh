handle_options() {
    case "$option" in
        "1a")
            echo "Database name: "
            read -r db_name

            create_db "$db_name"
            ;;
        "1b")
            echo "Database name to use: "
            read -r db_name

            echo "Table name: "
            read -r t_name

            echo "Write the columns. Omit usage of '()': "
            read -r content

            create_t "$db_name" "$t_name" "$content"
            ;;
        "2")
            echo "Database name to show tables from: "
            read -r db_name

            show_specific_db_tables "$db_name"
            ;;
        "3")
            echo "Database name containing the table: "
            read -r db_name

            echo "Table name: "
            read -r t_name

            show_all_from_table "$db_name" "$t_name"
            ;;
        "99")
            echo "You quit program."
            exit 0
            ;;
        *)
            echo "Invalid option!"
            ;;
    esac
}
