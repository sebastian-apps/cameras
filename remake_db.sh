rm db.sqlite3
rm core/migrations/0001_initial.py
mkdir -p core/migrations/temp
mv core/migrations/0002_insert_default.py core/migrations/temp
python manage.py makemigrations
python manage.py migrate
mv core/migrations/temp/0002_insert_default.py core/migrations
python manage.py migrate
echo "Files db.sqlite3 removed and new Django SQLite migrated."
