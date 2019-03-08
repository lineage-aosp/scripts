#!/bin/bash
echo "Installing figlet"
sudo apt-get install figlet -y

figlet Welcome To InfixRemixs Script

echo "What is Your Sony Device model number single sim(eg. h2113):"
read modelnumber1

echo "What is Your Sony Device model number dualsim (eg. h3113):"
read modelnumber2

echo "What is Your Sony Device  (eg. pioneer):"
read device
devicedir=device/sony/$device

echo "What is the rom are you building this is for .mk files so see what is required use AOSP MODEL NUMBER (eg cosp):"
read rom

cd $devicedir
mv aosp_$modelnumber1".mk" $rom"_"$modelnumber1".mk"
mv aosp_$modelnumber2".mk" $rom"_"$modelnumber2".mk"
newmk1= $rom"_"$modelnumber1".mk"
newmk2= $rom"_"$modelnumber2".mk"

sed -i -e 's/aosp/'$rom/g $newmk1
sed -i -e 's/aosp/'$rom/g $newmk2
sed -i -e 's/aosp/'$rom/g vendorsetup.sh
sed -i -e 's/aosp/'$rom/g AndroidProducts.mk
cd "$OLDPWD"

bash main.sh 

. build/envsetup.sh

#Select ur device 
lunch 

mka bacon
