#!/bin/sh 

updates=$(checkupdates | wc -l)
printf " %s updates" "$updates"

