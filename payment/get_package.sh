#!/bin/sh

echo "Checking iHotel Latest Version ..."

REPO_NAME="JENNIFER-University/IHotel"

get_latest_release() {
  curl --silent "https://api.github.com/repos/$1/releases/latest" | 
    grep '"tag_name":' |                                            
    sed -E 's/.*"([^"]+)".*/\1/'                                    
}

download_package() {
  VERSION=$(get_latest_release ${REPO_NAME})

  echo "Latest Versin is ${VERSION}"

  echo "Downloading iPayment"
  wget https://github.com/JENNIFER-University/IHotel/releases/download/${VERSION}/check-${VERSION}.zip -O /tmp/check.zip

  echo "Downloading iCheck"
  wget https://github.com/JENNIFER-University/IHotel/releases/download/${VERSION}/payment-${VERSION}.zip -O /tmp/payment.zip
}


download_package