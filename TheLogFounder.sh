#!/bin/bash

cat access.log |
cut -d " " -f1 | # Define um delimitador
sort | # Lista os IPs em ordem decresciva
sort -unr | # -u Elimila os repetidos # n Ordena numéricamente # r Ordena de forma reversa
uniq -c # Mostra a quantidade de requisições por IP
