#!/bin/sh

##### Constants
########################################################################
PHPCS="php phpcs.phar"
PHPCBF="php phpcbf.phar"

##### Init
########################################################################
if [ ! -f "$PHPCS" ]; then
    wget https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar
fi
if [ ! -f "$PHPCBF" ]; then
    wget https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar
fi

echo "Running Code Sniffer..."
$PHPCS --ignore=vendor,bootstrap/cache/,storage --standard=PSR2 --encoding=utf-8 -n -p app/Http/Controllers/Auth/LoginController.php
if [ $? != 0 ]
then
  echo "Fix the error before commit."
  exit 0
fi
