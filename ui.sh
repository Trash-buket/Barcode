#! /bin/bash

# run with watch
adminpass=$(cat ~/extra/adminpass)


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

Press 3 to access admin options

If this is the first time running this then go to admin options and press 4"

read -p '> ' ans

if [[ $ans = 1 ]]
then
	clear && exec ~/scan.sh

elif [[ $ans = 2 ]]
then
	exec ~/register.sh

elif [[ $ans = 3 ]]
then
	echo "what is the password?"

	read -p '> ' adminpassword 

	if [[ $adminpassword = $adminpass ]]

	then
	
		echo "
press 1 to run automount 

press 2 to shutdown 

press 3 to add a password 

press 4 to run first time set up

Enter back to go back"

               read -p '> ' adminans
               
	       if [[ $adminans = 1 ]]
     
	       then
	     
		       clear && exec ~/automount
     
     
	       elif [[ $adminans = 2 ]]
     
	       then
	     
		       sleep 10 && shutdown now
     
     
	       elif [[ $adminans = 3 ]]
     
	       then
	     
		       echo "what would you like to set the password as?"
	     	     
		       read -p '> ' pass

		       echo $pass > ~/extra/adminpass && echo "The password is set" && sleep 3 && exec ~/ui.sh
     
     
	       elif [[ $adminans = 4 ]]
     
	       then
	     
		       chmod +x ~/Barcode
	     
		       mv ~/Barcode/* ~ 
	     
		       rm -rf ~/Barcode
	     
		       mkdir ~/extra
	     
		       mkdir ~/barcodes
	 
		       mkdir ~/stations

	       elif [[ $adminans = back ]]
	       then
		       exec ~/ui.sh
     
	       fi
       else 
	       echo "incorrect password" && sleep 3 && exec ~/ui.sh

fi
else
	echo "please input a valid number"
	
	sleep 3 && exec ~/ui.sh
fi

