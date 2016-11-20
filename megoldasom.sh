#!/bin/bash
if ! (( $# == 2 ))
then
    echo "Hiba! 2 parameter szukseges: honap es file nev"
    exit
fi
if ! [[ -f $2 ]]
then
    echo "Hiba! nem letezo file: $2"
    exit
fi

echo "`cat $2 | grep $1 | cut -d',' -f3 | cut -c2- | sort | uniq -c | sort -nr | cut -c9- | head -n1`"