# DoubleClue Docker

This repository contains a Dockerfile which builds the DoubleClue application from 
https://github.com/HWS-DoubleClue/IAM-Password-Manager.

## Setup

You can find a `docker-compose.yml` for example usage in this repository.  
Start the setup with `docker-compose up -d`.  

Open https://localhost/setup/?start=yes and follow the installation instructions for the database configuration from 
https://doubleclue.com/wp-content/uploads/Quick_Installation_Guide_EN.pdf.  

Use the defined database credentials from your `docker-compose.yml`.  

Once you finished the database and clicked on the button `Close DoubleClueSetup` the application will reboot.  
This will take a few seconds before the administration is available on https://localhost:8443/dcem/mgt  

You can log in with the user `superadmin` and the password, you've chosen during the installation.
