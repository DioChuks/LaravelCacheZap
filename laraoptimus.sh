#!/bin/bash

# Function to display an error message and exit
error_exit() {
  echo "$1" 1>&2
  exit 1
}

# Check if PHP is installed
if ! command -v php &> /dev/null
then
    error_exit "PHP is not installed. Please install PHP to continue."
fi

# Check if Artisan command is available
if ! [ -f artisan ]; then
    error_exit "Artisan command not found. Please run this script from the Laravel project root."
fi

echo "This script clears the existing cache and re-generates it."
while true; do
    read -p "Are you sure you want to continue? (y/n)" answer
    case ${answer:0:1} in
        y|Y )
            # Run artisan commands to clear and regenerate cache
            php artisan optimize:clear || error_exit "Failed to clear the cache."
            php artisan optimize || error_exit "Failed to regenerate the cache."

            echo "Cache cleared and re-generated successfully!"
            exit
        ;;
        n|N ) error_exit "Aborting...";;
        * ) echo "Please answer y or n.";;
    esac
done