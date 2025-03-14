#!/bin/bash

cd $HOME/alist
./alist server --debug &
sleep 5
mkdir -p data/temp
chmod 777 data/temp