#!/bin/bash

mkdir -p storage/framework/views
mkdir -p storage/framework/cache
mkdir -p storage/logs
mkdir -p bootstrap/cache

chmod -R 777 storage
chmod -R 777 bootstrap/cache

php artisan config:clear
php artisan config:cache
php artisan view:clear
php artisan view:cache
