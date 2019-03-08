#!/bin/bash
echo "Installing figlet"
sudo apt-get install figlet -y

figlet Welcome To InfixRemixs Script

echo "What is Your Sony Device model number (eg. h113):"
read modelnumber

echo "What is Your Sony Device  (eg. pioneer):"
read device
devicedir=device/sony/$device

echo "What is the rom are you building this is for .mk files so see what is required use AOSP MODEL NUMBER (eg cosp):"
read rom

cd $devicedir
mv aosp_$device".mk" $rom"_"$modelnumber".mk"
newmk= $rom"_"$modelnumber".mk"

export TARGET_KERNEL_SOURCE = kernel/sony/msm-4.9/kernel

sed -i -e 's/aosp/'$rom/g $newmk
sed -i -e 's/aosp/'$rom/g vendorsetup.sh
sed -i -e 's/aosp/'$rom/g AndroidProducts.mk
cd "$OLDPWD"

bash main.sh 

. build/envsetup.sh
lunch $modelnumber"_"$rom

mka bacon
