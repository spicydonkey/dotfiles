#!/bin/bash

printf "\n<<< Starting apt Setup >>>\n"

printf "\n< Installing httpie >\n"
sudo apt --assume-yes install httpie
printf "\n< Installing curl >\n"
sudo apt --assume-yes install curl

printf "\n< Installing vim-plug >\n"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim