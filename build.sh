#!/bin/bash
echo "Installing figlet"
sudo apt-get install figlet -y

figlet Welcome To InfixRemixs Script

echo "What is Your Sony Device Name:"
read device
devicedir=device/sony/$device

echo "What is the rom are you building this is for .mk files so see what is required use AOSP CODENAME:"
read rom

cd $devicedir
mv aosp_$device".mk" $rom"_"$device".mk"
newmk= $rom"_"$device".mk"

export TARGET_KERNEL_SOURCE = kernel/sony/msm-4.9/kernel

sed -i -e 's/aosp/'$rom/g $newmk
sed -i -e 's/aosp/'$rom/g vendorsetup.sh
sed -i -e 's/aosp/'$rom/g AndroidProducts.mk
cd "$OLDPWD"

bash main.sh 

. build/envsetup.sh
lunch $device"_"$rom

mka bacon
