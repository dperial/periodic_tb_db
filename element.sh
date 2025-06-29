#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

MAIN_MENU(){
ARG=$1

if [[ $ARG ]]
then
  # get the arguments from the table elements
  RESULT_EL=$($PSQL "SELECT atomic_number, symbol, name FROM elements WHERE atomic_number::TEXT='$ARG' OR symbol='$ARG' OR name='$ARG';")

  if [[ -z $RESULT_EL ]]
  then
    echo "I could not find that element in the database."
  else
    RESULT=""
    while IFS="|" read ATOMIC_NUMBER SYMBOL NAME
    do
        RESULT="The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). "

        RESULT_PROP=$($PSQL "SELECT type, atomic_mass, melting_point_celsius, boiling_point_celsius FROM properties WHERE atomic_number=$ATOMIC_NUMBER;")

        while IFS="|" read TYPE ATOMIC_MASS MELTING BOILING
        do
          RESULT+="It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
        done <<< "$RESULT_PROP"

        echo "$RESULT"
    done <<< "$RESULT_EL"
  fi
else
  echo -e "Please provide an element as an argument."
fi

}
MAIN_MENU "$1"