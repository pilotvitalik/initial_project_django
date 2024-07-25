#!/bin/sh

# Ждем, пока база данных станет доступной
while ! nc -z $DB_HOST $DB_PORT;
do
    echo "Waiting for database..."
    sleep 1
done

# Запускаем Django сервер
exec "$@"