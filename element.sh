#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

MAIN_MENU(){
ARG=$1

if [[ $ARG ]]
then
  # check if the giving arg is a name
  if [[ $ARG =~ ^[0-9]+$ ]]
  then
    # Numeric: atomic number
    RESULT_EL=$($PSQL "SELECT atomic_number, symbol, name FROM elements WHERE atomic_number::TEXT='$ARG';")
  else
    # String: could be symbol or name
    # Format first letter uppercase
    ARG_FORMATTED="$(tr '[:lower:]' '[:upper:]' <<< ${ARG:0:1})$(tr '[:upper:]' '[:lower:]' <<< ${ARG:1})"
    RESULT_EL=$($PSQL "SELECT atomic_number, symbol, name FROM elements WHERE symbol='$ARG_FORMATTED' OR name='$ARG_FORMATTED';")
  fi

  # get the arguments from the table elements
  # RESULT_EL=$($PSQL "SELECT atomic_number, symbol, name FROM elements WHERE atomic_number::TEXT='$ARG' OR symbol='$ARG' OR name='$ARG';")

  if [[ -z $RESULT_EL ]]
  then
    echo "I could not find that element in the database."
  else
    RESULT=""
    RESULT_PROP=""
    RESULT_TYPE=""
    # elements arguments
    while IFS="|" read ATOMIC_NUMBER SYMBOL NAME
    do
      RESULT="The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). "

      RESULT_PROPS=$($PSQL "SELECT atomic_mass, melting_point_celsius, boiling_point_celsius, type_id FROM properties WHERE atomic_number=$ATOMIC_NUMBER;")
      # properties arguments
      while IFS="|" read ATOMIC_MASS MELTING BOILING TYPE_ID
      do
        RESULT_PROP=" with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."

        # get the type from types table
        RESULT_TYPES=$($PSQL "SELECT type FROM types WHERE type_id=$TYPE_ID;")
        while IFS="|" read TYPE
        do
          RESULT_TYPE="It's a $TYPE,"
        done <<< "$RESULT_TYPES"
      done <<< "$RESULT_PROPS"
      
      RESULT+="$RESULT_TYPE"
      RESULT+="$RESULT_PROP"
      echo "$RESULT"
    done <<< "$RESULT_EL"
  fi
else
  echo -e "Please provide an element as an argument."
fi

}
MAIN_MENU "$1"