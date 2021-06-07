#! /bin/bash

# run with watch
adminpass=$(cat ~/extra/password)


clear && echo "
||      ||      ||=====    ||         ||         =========
||      ||      ||         ||         ||         ||     ||
||      ||      ||         ||         ||         ||     ||
||======||      ||=====    ||         ||         ||     ||
||      ||      ||         ||         ||         ||     ||
||      ||      ||         ||         ||         ||     ||
||      ||      ||=====    ||=====    ||=====    =========

Press 1 to scan a product

Press 2 to register a scanner

Press 3 to run first time setup

Press 4 for verbose mode (for debug purposes)

Press 5 to access admin options

If this is the first time running this then go to admin options and press 4"

read -p '> ' ans

if [[ $ans = 1 ]]
then
	clear && exec ~/scan.sh

elif [[ $ans = 2 ]]
then
	

elif [[ $ans = 5 ]]

read -p '> ' adminpass
then
	echo "
press 1 to run automount 

press 2 to shutdown 

press 3 to add a password 

press 4 to run first time set up"

read -p '> ' adminans
     if [[ $adminans = 1 ]]
     then
	     clear && exec ~/automount
     
     elif [[ $adminans = 2 ]]
     then
	     delay 10 && shutdown now
     
     elif [[ $adminans = 3 ]]
     then
	     echo "what would you like to set the password as?"
	     
	     read -p '> 'pass && echo "The password is set"

	     echo $pass > ~/extra/adminpass
     
     elif [[ $adminans = 4 ]]
     then
	     chmod +x ~/Barcode
	     mv ~/Barcode/* ~
	     rm -rf ~/Barcode
	     mkdir extra
	     mkdir barcodes
	     mkdir stations


     
fi

