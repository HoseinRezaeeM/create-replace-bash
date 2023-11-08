#!/bin/bash


create_files() {
    for file_num in {1..5}; do
        touch "file${file_num}.txt"
        echo "Hello world" >> "file${file_num}.txt"
    done
    echo "Text files created and 'Hello world' text appended to them."
}


replace_word() {
    for file in *.txt; do
        sed -i 's/world/bash/g' "$file"
    done
    echo "The word 'world' has been replaced with 'bash' in all text files."
}


show_menu() {
    clear
    echo "Select an option:"
    echo "1. Create text files and append 'Hello world'"
    echo "2. Replace the word 'world' with 'bash'"
    echo "3. Exit"

    read -p "Please enter the option number: " choice
    case $choice in
        1)
            create_files
            ;;
        2)
            replace_word
            ;;
        3)
            echo "Exiting..."
            exit
            ;;
        *)
            echo "Invalid choice."
            ;;
    esac

    read -p "Press Enter to continue."
    show_menu
}

show_menu