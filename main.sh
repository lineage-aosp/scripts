#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
now=$(date +"%T")
echo "Script Executed at : $now"

#This makes sure we use key sopd hals and modules 
rm -rf vendor/qcom/opensource/interfaces
git clone https://github.com/sonyxperiadev/vendor-qcom-opensource-interfaces vendor/qcom/opensource/interfaces    

rm -rf vendor/qcom/opensource/dataservices
git clone https://github.com/sonyxperiadev/vendor-qcom-opensource-dataservices vendor/qcom/opensource/dataservices

rm -rf hardware/qcom/gps
git clone https://github.com/SonyAosp/platform_hardware_qcom_sdm845_gps hardware/qcom/gps

#Nuke Json (Already declared)
rm -rf device/sony/common/hardware/json-c

rm -rf vendor/qcom/opensource/bluetooth 
git clone https://github.com/sonyxperiadev/vendor-qcom-opensource-bluetooth vendor/qcom/opensource/bluetooth

rm -rf hardware/qcom/media
git clone https://github.com/SonyAosp/platform_hardware_qcom_media hardware/qcom/media

rm -rf hardware/qcom/audio
git clone https://github.com/SonyAosp/platform_hardware_qcom_audio hardware/qcom/audio

now=$(date +"%T")
echo "Script Finished at : $now"
