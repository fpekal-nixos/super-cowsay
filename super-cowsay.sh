#!/bin/sh

arr[0]="beavis.zen"
arr[1]="blowfish"
arr[2]="bong"
arr[3]="bud-frogs"
arr[4]="bunny"
arr[5]="cheese"
arr[6]="cower"
arr[7]="daemon"
arr[8]="default"
arr[9]="dragon"
arr[10]="dragon-and-cow"
arr[11]="elephant"
arr[12]="elephant-in-snake"
arr[13]="eyes"
arr[14]="flaming-sheep"
arr[15]="ghostbusters"
arr[16]="head-in"
arr[17]="hellokitty"
arr[18]="kiss"
arr[19]="kitty"
arr[20]="koala"
arr[21]="kosh"
arr[22]="llama"
arr[23]="luke-koala"
arr[24]="meow"
arr[25]="milk"
arr[26]="moofasa"
arr[27]="moose"
arr[28]="mutilated"
arr[29]="ren"
arr[30]="satanic"
arr[31]="sheep"
arr[32]="skeleton"
arr[33]="small"
arr[34]="sodomized"
arr[35]="stegosaurus"
arr[36]="stimpy"
arr[37]="supermilker"
arr[38]="surgery"
arr[39]="telebears"
arr[40]="three-eyes"
arr[41]="turkey"
arr[42]="turtle"
arr[43]="tux"
arr[44]="udder"
arr[45]="vader"
arr[46]="vader-koala"
arr[47]="www"


while [ 1 ]
do
	rand_type=${arr[$RANDOM % ${#arr[@]}]}
	read linijka
	#make random decision yes or no
	if [ $((RANDOM % 2)) -eq 0 ]; then
	cowsay -f $rand_type "$linijka"
	else
	ponysay "$linijka"
	fi
done
