# JENNIFER Education App
This project contains [iHotel](https://github.com/JENNIFER-University/IHotel) docker image that to be used with JENNIFER Education and Training Course.

The contents are as follow: 

* iHotel Container: This container contains iHotel Application deployed on Tomcat 8 
* iPayment Container: This container contains the iPayment and iCheck sample Applications 
* Database Container: This contains MySQL image that iHotel uses
* JENNIFER Server: This container contains JENNIFER Server.

## Requirements
In order to use this envrionment you will need to have JENNIFER Download Links (Agent and Server). 


* If you are using the self-training guide from [JENNIFER University](https://edu.jennifersoft.com) you will need to apply for a [trail license](https://jennifersoft.com) to get the download links.

* If you are attending a JENNIFER training session, those links will be provided to you during the training session via the instructor. 

## Building the environment
* To build the envrionment use the docker-compose command passing JENNIFER agent download link and server download link as arguments.

```
docker-compose build --build-arg AGENT_PACKAGE=AGENT_DOWNLOAD_LINK_HERE --build-arg SERVER_PACKAGE=SERVER_DOWNLOAD_LINK_HERE
```

* Alternativly you can use the `build.sh(.bat)` file. Opne this file with your favorite editor and set the Download links

##  Starting up the demo 

* To start up the demo system, execute the command
```
docker-compose up -d
```

For details information about the demo system, please refer to the exercise sheets

