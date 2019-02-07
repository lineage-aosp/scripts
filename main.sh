#!/bin/bash
now=$(date +"%T")
echo "Script Executed at : $now"

if [ ! -d vendor/qcom/opensource/interfaces ]
then
    rm -rf vendor/qcom/opensource/interfaces
    git clone https://github.com/sonyxperiadev/vendor-qcom-opensource-interfaces vendor/qcom/opensource/interface    
    echo " Missing Repo was found and was cloned "
    pwd
fi

if [ ! -d vendor/qcom/opensource/dataservices ]
   then 
   rm -rf vendor/qcom/opensource/dataservices
   git clone https://github.com/sonyxperiadev/vendor-qcom-opensource-dataservices vendor/qcom/opensource/dataservices
   echo " Missing Repo was found and was cloned "
fi

# this happens even if the directory does exist
rm -rf hardware/qcom/gps
git clone https://github.com/sonyxperiadev/hardware-qcom-gps-sdm845 hardware/qcom/gps


now=$(date +"%T")
echo "Script Finished at : $now"
