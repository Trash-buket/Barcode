




statnumb1=$(lsusb | grep 13ba:0018)
statnumb2=$(lsusb | grep 12ba:0000)
time=$(date '+%m-%d-%Y, %H:%M:%S')
echo "Please scan the Barcode"

read Barcode

echo "What is the order number?"

read ordernumb

echo "Is this data correct?
     The bar code is $Barcode,
     The order number is $ordernumb"

read response

if [[ $response = yes ]]

then echo "$Barcode, $ordernumb, $time, $(statnumb
