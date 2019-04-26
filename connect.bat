@ECHO off
cls

:BEGIN

set SERVER_CONTAINER=edu_jennifer_server
set IHOTEL_CONTAIER=edu_ihotel_hotel
set IPAYMENT_CONTAINER=edu_ihotel_payment

ECHO.
ECHO "Select a container to connect to (Enter 1,2,3 or 4 for your choice)"
ECHO 1. JENNIFER Server
ECHO 2. iHotel Container
ECHO 3. iPayment and iCheck
ECHO 4. Quit
set choice=

set /p choice=Enter your choice.
if not '%choice%'=='' set choice=%choice:~0,1%

if '%choice%'=='1' GOTO connect_to_jennifer
if '%choice%'=='2' GOTO connect_to_ihotel
if '%choice%'=='3' GOTO connect_to_ipayment
if '%choice%'=='4' GOTO END
ECHO "%choice%" is not valid, try again
ECHO.

GOTO BEGIN


:connect_to_jennifer
    ECHO.
    ECHO "Connecting you to JENNIFER Server %SERVER_CONTAINER%"
    docker exec -ti %SERVER_CONTAINER% sh
    GOTO END

:connect_to_ihotel
    ECHO.
    ECHO "Connecting you to iHotel %IHOTEL_CONTAINER%"
    docker exec -ti %IHOTEL_CONTAIER% sh
    GOTO END

:connect_to_ipayment
    ECHO.
    ECHO "Connecting you to iPayment %IPAYMENT_CONTAINER%"
    docker exec -ti %IPAYMENT_CONTAINER% sh
    GOTO END

:END
    ECHO "Bye!"
    pause