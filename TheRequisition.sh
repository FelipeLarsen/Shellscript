#!/bin/bash

echo "Digite o IP para mais imformações: "
  read ip 

cat access.log |
grep $ip | # Busca pelo IP informado pelo usuário
cut -d "[" -f2 | # Define um delimitador
sort -urn | # -u Elimila os repetidos # n Ordena numéricamente # r Ordena de forma reversa
uniq -c # Mostra a quantidade de requisições por IP
