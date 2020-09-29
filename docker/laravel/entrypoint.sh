cd /app  
php artisan migrate:fresh --seed

if [ $? -eq 0 ]; then
    >&2 echo "Migration successfully!!!"
fi