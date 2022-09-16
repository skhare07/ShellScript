#!/bin/bash

 declare -A sounds

sounds[dog]="bark"
sounds[cows]=moo
sounds[bird]="tweet"
sounds[wolf]="howl"

echo "Dog sound " ${sounds[dog]}
echo "all animal sound " ${sounds[@]}
echo "animal "  ${!sounds[@]}
echo "no of animals" ${#sounds[@]}

unset sounds[dog]
echo " "
echo "animal" ${!sounds[@]}
echo " no of animal " ${#sounds[@]}



