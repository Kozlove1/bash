#!/bin/bash

echo "Привет"
echo "Мое имя $(./user_name.sh)"

echo "Сейчас нахожусь в $(./current_working_directory.sh)"
echo "Мой домашний каталог $(./absolute_path_home_directory.sh)"

echo "Моя ОС"

if [ -f /etc/os-release ]; then
	cat /etc/os-release
elif [ -f /System/Library/CoreServices/SystemVersion.plist ]; then

	PRODUCT_NAME=$(defaults read /System/Library/CoreServices/SystemVersion ProductName 2>/dev/null) 
	PRODUCT_VERSION=$(defaults read /System/Library/CoreServices/SystemVersion ProductVersion 2>/dev/null)
	BUILD_VERSION=$(defaults read /System/Library/CoreServices/SystemVersion ProductBuildVersion 2>/dev/null)
	echo "NAME=\"$PRODUCT_NAME\""
	echo "VERSION=\"$PRODUCT_VERSION ($BUILD_VERSION)\""
else
	echo "Не удалось определить версию ОС"
fi

echo "Мое время работы"
./uptime.sh
