{#!/bin/bash)
now=$(date +"%T")
echo "Script Executed at : $now"

if [ ! -d vendor/qcom/opensource/interfaces ]
then
    git clone https://github.com/sonyxperiadev/vendor-qcom-opensource-interfaces vendor/qcom/opensource/interfaces
    pwd
fi

echo " First repo done "

if [ ! -d vendor/qcom/opensource/dataservices ]
   then 
   git clone https://github.com/sonyxperiadev/vendor-qcom-opensource-dataservices
fi
now=$(date +"%T")
echo "Script Finished at : $now"
