#!/bin/sh

checkupdates 

printf "\n"

printf "\nDo you wish to update? "
read choice

case $choice in 
  y)
    sudo pacman -Syu 
    ;;
  y) 
    sudo pacman -Syu 
    ;;
  n) 
    exit
    ;;
  n) 
    exit
    ;;
esac


