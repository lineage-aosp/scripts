#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
now=$(date +"%T")
echo "Script Executed at : $now"
MISSING="${RED}Missing Repo was found and is now being fixed${NC}"
if [ ! -d vendor/qcom/opensource/interfaces ]
then
    rm -rf vendor/qcom/opensource/interfaces
    git clone https://github.com/sonyxperiadev/vendor-qcom-opensource-interfaces vendor/qcom/opensource/interface    
    echo -e $MISSING
    pwd
fi

if [ ! -d vendor/qcom/opensource/dataservices ]
   then 
   rm -rf vendor/qcom/opensource/dataservices
   git clone https://github.com/sonyxperiadev/vendor-qcom-opensource-dataservices vendor/qcom/opensource/dataservices
   echo -e $MISSING
fi

# this happens even if the directory does exist
rm -rf hardware/qcom/gps
git clone https://github.com/SonyAosp/platform_hardware_qcom_sdm845_gps hardware/qcom/gps

#Nuke Json (Already declared)
rm -rf device/sony/common/hardware/json-c

rm -rf vendor/qcom/opensource/bluetooth 
git clone https://github.com/sonyxperiadev/vendor-qcom-opensource-bluetooth vendor/qcom/opensource/bluetooth

rm -rf hardware/qcom/media
https://github.com/SonyAosp/platform_hardware_qcom_media hardware/qcom/media




now=$(date +"%T")
echo "Script Finished at : $now"
