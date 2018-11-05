#!/bin/bash

bloat="libreoffice-* transmission-* gnome-mines gnome-mahjongg gnome-orca gnome-sudoku cheese simple-scan aisleriot remmina thunderbird rhythmbox account-plugin*"

if [[ $(lsb_release -rs) > 16 ]]; then
	for i in $bloat; do
		sudo apt purge $i -y
	done
	sudo apt autoremove -y
else
	for i in $bloat; do
		sudo apt-get purge $i -y
	done
	sudo apt-get autoremove -y
fi
