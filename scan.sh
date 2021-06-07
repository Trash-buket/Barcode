s1=$(cat ~/stations/1)
s2=$(cat ~/stations/2)
s3=$(cat ~/stations/3)
s4=$(cat ~/stations/4)
s5=$(cat ~/stations/5)
s6=$(cat ~/stations/6)


time=$(date '+%m-%d-%Y, %H:%M:%S')
echo "Please scan the Barcode"

read Barcode

echo "What is the order number?"

read ordernum

echo "What your station number?"

read statnumb

echo "Is this data correct?
     The bar code is $Barcode,
     The order number is $ordernum
     The station number is $statnumb"

     read -r '> ' response

if [[ $statnumb = 1 ]]
then
	if [[ $response = yes ]]
	then
		echo "$Barcode, '$ordernum', $s1, $time, $statnumb" > ~/barcodes/$Barcode && echo "Barcode saved"  && sleep 5 && exec ~/ui.sh
	fi
elif [[ $statnumb = 2 ]]
then	
	if [[ $response = yes ]]
	then
		echo "$Barcode, '$ordernum', $s2, $time, $statnumb" > ~/barcodes/$Barcode && echo "Barcode saved"  && sleep 5 && exec ~/ui.sh
	fi
elif [[ $statnumb = 3 ]]
then	
	if [[ $response = yes ]]
	then
		echo "$Barcode, '$ordernum', $s3, $time, $statnumb" > ~/barcodes/$Barcode && echo "Barcode saved"  && sleep 5 && exec ~/ui.sh
	fi
elif [[ $statnumb = 4 ]]
then	
	if [[ $response = yes ]]
	then
		echo "$Barcode, '$ordernum', $s4, $time, $statnumb" > ~/barcodes/$Barcode && echo "Barcode saved"  && sleep 5 && exec ~/ui.sh
	fi
elif [[ $statnumb = 5 ]]
then	
	if [[ $response = yes ]]
	then
		echo "$Barcode, '$ordernum', $s5, $time, $statnumb" > ~/barcodes/$Barcode && echo "Barcode saved"  && sleep 5 && exec ~/ui.sh
	fi
elif [[ $statnumb = 6 ]]
then	
	if [[ $response = yes ]]
	then
		echo "$Barcode, '$ordernum', $s6, $time, $statnumb" > ~/barcodes/$Barcode && echo "Barcode saved"  && sleep 5 && exec ~/ui.sh
	fi


else echo "ERROR CODE 2 : invalid station number" && sleep 5 && exec ~/ui.sh

fi

