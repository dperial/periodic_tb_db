#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

MAIN_MENU(){
ARG=$1

if [[ -z $ARG ]]
then
  echo "Please provide an element as an argument."
  exit 1
fi

RESULT=$($PSQL "SELECT atomic_number, symbol, name FROM elements WHERE atomic_number::TEXT='$ARG' OR symbol='$ARG' OR name='$ARG';")

if [[ -z $RESULT ]]
then
  echo "I could not find that element in the database."
else
  echo "$RESULT" | while IFS="|" read ATOMIC_NUMBER SYMBOL NAME
  do
    echo -e "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL)"
  done
fi
}
MAIN_MENU "$1"