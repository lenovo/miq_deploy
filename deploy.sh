#!/bin/sh
TOP="/home/lenovo"
PROD="/home/lenovo/prod"
MIQ="/home/lenovo/prod/manageiq"
if [ -e $PROD ]
then
    rm -fR $PROD
fi
mkdir $PROD
unzip $TOP/manageiq.zip -d $PROD
cd $MIQ
docker ps -a
docker stop lenovo_prod
docker rm lenovo_prod
docker rmi lenovo_miq_prod
docker build -t lenovo_miq_prod .
