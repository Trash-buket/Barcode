echo "Please remove all other card readers before you register a new one"

sleep 2 && echo "Are all other card readers removed?"

read -p '> ' response

if [[ $response = yes ]]

then 

	echo "Please input your station number"

	read numb


	lsusb | grep PCPlay > ~/stations/$numb && echo "your device has been registered"

	sleep 3 && exec ~/ui.sh


fi
