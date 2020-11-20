#!/bin/sh

echo "Running Code Sniffer..."
./vendor/bin/phpcs --standard=PSR2 --encoding=utf-8 -n -p .
if [ $? != 0 ]
then
  echo "Fix the error before commit."
  exit 1
fi
