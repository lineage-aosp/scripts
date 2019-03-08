#!/bin/bash
echo "Installing figlet"
sudo apt-get install figlet -y

figlet Welcome To InfixRemixs Script

echo "What is Your Sony Device Name:"
read device
devicedir=device/sony/$device

echo "What is rom are you building this is for .mk files so see what is required:"
read rom

cd $devicedir
mv lineage_$device".mk" $rom"_"$device".mk"
newmk=$rom"_"$device".mk"

sed -i -e 's/lineage/'$rom/g $newmk
sed -i -e 's/lineage/'$rom/g vendorsetup.sh
sed -i -e 's/lineage/'$rom/g AndroidProducts.mk
cd "$OLDPWD"

bash main.sh

. build/envsetup.sh
lunch $rom"_"$device

mka bacon
