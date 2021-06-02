echo "Please scan the barcode."

read barcode

#touch ~/barcodes/$barcode || echo "Please make a barcode directory [EXIT CODE 1]" && exit

echo "
What is the order number?"

read order

echo "
What station do you at?"

read station

echo "
Processing data.." && clear



echo " 
is this data correct?"

echo "    The bar code is $barcode, 
     The order number is $order, 
     The station number is $station"

read response



if [[ $response = yes ]]

then echo "$barcode, $order, $station", date '+%m-%d-%Y, %H:%M:%S' > ~/barcodes/$barcode.csv



elif [[ $response = no ]]

then clear && exec ~/projects/scan.sh



fi
