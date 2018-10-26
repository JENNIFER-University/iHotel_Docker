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

  echo "Downloading iHotel"
  wget https://github.com/JENNIFER-University/IHotel/releases/download/${VERSION}/ihotel-${VERSION}.zip -O /tmp/ihotel.zip

  echo "Downloading stress"
  wget https://github.com/JENNIFER-University/IHotel/releases/download/${VERSION}/stress-${VERSION}.zip -O /tmp/stress.zip
}


download_package