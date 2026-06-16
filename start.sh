#!/bin/bash
set -e

# Create SQLite database file if it doesn't exist
touch /app/database/database.sqlite
chmod 664 /app/database/database.sqlite

# Run migrations
php artisan migrate --force

# Start Laravel server
php artisan serve --host 0.0.0.0 --port ${PORT:-8000}
