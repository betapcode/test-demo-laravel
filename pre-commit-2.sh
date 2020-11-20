#!/bin/sh

echo "Running Code Sniffer..."
./vendor/bin/phpcs --ignore=vendor,bootstrap/cache/,storage --standard=PSR2 --encoding=utf-8 -n -p app/Http/Controllers/Auth/LoginController.php
if [ $? != 0 ]
then
  echo "Fix the error before commit."
  exit 1
fi
