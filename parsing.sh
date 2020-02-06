#!/bin/bash

if [ "$1" == "" ];
  then
    echo "Como usar: ./parsing.sh 'site'"
    echo "Exemplo: ./parsing.sh www.google.com.br)"

  else
    wget -q $1
    grep href index.html |
    cut -d "/" -f3 |
    grep "\." |
    cut -d '"' -f1 |
    sort -u |
    grep -v "<li" > listHosts

  for url in $(cat listHosts);
    do host -T $url |
      grep "has address";
    done

  rm listHosts
  rm index.html

fi
