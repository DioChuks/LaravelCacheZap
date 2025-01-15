# Laravel Cache Clear and Regenerate Script

This Bash script helps automate the process of clearing and re-generating the Laravel application's cache using the `php artisan optimize:clear` and `php artisan optimize` commands.

## Features

- Clears existing cache (config, route, view, etc.)
- Re-generates cache for optimized performance
- Prompts the user for confirmation before executing
- Checks if PHP and Artisan are available
- Provides error handling and messages for failed commands
- Prints a success message once the process is completed

## Prerequisites

Before running the script, ensure the following:

- PHP is installed on your system.
- The script is run from the root directory of a Laravel project (where the `artisan` file is located).

## Usage

1. Clone this repository or copy the script to your Laravel project’s root directory.
2. Open your terminal and navigate to your Laravel project’s root directory.
3. Make the script executable by running:

   ```bash
   chmod +x cache_clear_and_regenerate.sh
