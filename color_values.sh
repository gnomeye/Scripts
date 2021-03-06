#!/usr/bin/env bash
#submited by crshd

xrdb=($(xrdb -query | grep "color[0-9]*:" | sort | cut -f 2-))

declare -A color
index=0
for name in black brightgreen brightyellow brightblue brightmagenta brightcyan brightwhite red green yellow blue magenta cyan white grey brightred; do
    color[${name}]=${xrdb[$index]}
    ((index++))
done

echo "${color['black']} black "
echo "${color['red']} red "
echo "${color['green']} green "
echo "${color['yellow']} yellow "
echo "${color['blue']} blue "
echo "${color['magenta']} magenta "
echo "${color['cyan']} cyan "
echo "${color['white']} white "

echo "${color['grey']} grey "
echo "${color['brightred']} brightred "
echo "${color['brightgreen']} brightgreen "
echo "${color['brightyellow']} brightyellow "
echo "${color['brightblue']} brightblue "
echo "${color['brightmagenta']} brightmagenta "
echo "${color['brightcyan']} brightcyan "
echo "${color['brightwhite']} brightwhite " 
