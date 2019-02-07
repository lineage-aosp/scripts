#!/bin/bash
now=$(date +"%T")
echo "Script Executed at : $now"

if [ ! -d vendor/qcom/opensource/interfaces ]
then
    rm -rf vendor/qcom/opensource/interfaces
    git clone https://github.com/sonyxperiadev/vendor-qcom-opensource-interfaces vendor/qcom/opensource/interfaces
    pwd
fi

echo " First repo done "

if [ ! -d vendor/qcom/opensource/dataservices ]
   then 
   rm -rf vendor/qcom/opensource/dataservices
   git clone https://github.com/sonyxperiadev/vendor-qcom-opensource-dataservices vendor/qcom/opensource/dataservices
fi

if [ ! -d hardware/qcom/gps ]
   then 
   rm -rf hardware/qcom/gps
   git clone https://github.com/sonyxperiadev/hardware-qcom-gps-sdm845 hardware/qcom/gps
fi

now=$(date +"%T")
echo "Script Finished at : $now"
