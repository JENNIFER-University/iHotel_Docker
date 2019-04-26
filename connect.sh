#!/bin/bash

SERVER_CONTAINER=edu_jennifer_server
IHOTEL_CONTAIER=edu_ihotel_hotel
IPAYMENT_CONTAINER=edu_ihotel_payment

connect_to_jennifer() {
    echo "Connecting you to JENNIFER Server"
    docker exec -ti $SERVER_CONTAINER sh
}

connect_to_ihotel() {
    echo "Connecting you to iHotel"
    docker exec -ti $IHOTEL_CONTAIER sh
}

connect_to_ipayment() {
    echo "Connecting you to iPayment"
    docker exec -ti $IPAYMENT_CONTAINER sh
}


echo "Select a container to connect to (Enter 1,2,3 or 4 for your choice)"
PS3='Please enter your choice: '
options=("JENNIFER Server" "iHotel Container" "iPayment and iCheck" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "JENNIFER Server")
            connect_to_jennifer
            ;;
        "iHotel Container")
            connect_to_ihotel
            ;;
        "iPayment and iCheck")
            connect_to_ipayment
            ;;
        "Quit")
            echo "Bye!"
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done


