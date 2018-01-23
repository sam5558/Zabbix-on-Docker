# Zabbix-on-Docker
Autodeploy Zabbix XXL/MariaDB on Docker

This repo includes a bash script for automating the deployment of Docker XXL + MariaDB via Docker.
This script is mainly for testing purposes.
Useful script for lazy people like myself ;)

# Instructions

All you have to do is edit file and replace **"password"** with a random password. Also be sure to use the same password for the two docker instances this script will generate. 
Then **chmod** the file to make it executable. Then run :
**./zabbix-test**

Now you should be able to access by typing: **yourinternalip:8080/zabbix**.

Credentials: **admin / zabbix** (better change it)


Thanks **MonitoringArtist** for the docker updated sources.
