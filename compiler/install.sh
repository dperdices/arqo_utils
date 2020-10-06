#!/bin/bash
docker build -t arqo-compiler .
cp compila.sh /usr/local/bin/compila_arqo
