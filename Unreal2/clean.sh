#!/bin/bash

width=$1
height=$2
os=$3

if [ $os = "Windows" ]
then
echo Windows
mkdir -p "drive_c/GOG Games"
mv "drive_c/Unreal 2 - The Awakening" "drive_c/GOG Games"
cd "drive_c/GOG Games/Unreal 2 - The Awakening/singleplayer/System/"
elif [ $os = "Linux" ]
then
echo Linux
cd System
ls -l
fi

echo "la résolution actuelle est $width x $height"
echo "modification de la configuration"

sed -i "s/FullscreenViewportX.*/FullscreenViewportX=$width/g" Default.ini
sed -i "s/FullscreenViewportY.*/FullscreenViewportY=$height/g" Default.ini
sed -i "s/UseVSync=False/UseVSync=True/g" Default.ini
sed -i "s/UseDefaultDriver=True/UseDefaultDriver=False/g" Default.ini

cd ..

rm -f -r __redist __support tmp goggame-1207658677.* app commonappdata
