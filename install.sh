#!/bin/bash
clear
echo "--------------------"
echo "|	 Кто ты ?        |"
echo "|------------------|"
echo "| 1. Termux        |"
echo "| 2. Другой Unix   |"
echo "| 3. iSH	         |"
echo "|	                 |"
echo "|  Введите 1/2/3:  |"
echo "--------------------"
read numb
if [ $numb = "1" ]
then
	pkg install python
	pkg install python3
	pkg install python3-pip
	pkg install dos2unix
	pip3 install requests
	pip3 install colorama
	cp ~/spamer/spamer.py /data/data/com.termux/files/usr/bin/spamer
	dos2unix /data/data/com.termux/files/usr/bin/spamer
	chmod 777 /data/data/com.termux/files/usr/bin/spamer
	spamer
else
	if [ $numb = "2" ]
	then
		if [ "$(whoami)" != 'root' ];
		then
			echo "У вас нет прав. Запустите install.sh с root правами (sudo sh ~/spamer/install.sh)"
			exit
		else
			apt install python3 python3-pip dos2unix
			pip3 install requests
			pip3 install colorama
			cp ~/spamer/spammer.py /usr/bin/spamer
			dos2unix /usr/bin/spamer
			chmod 777 /usr/bin/spamer
			spamer
		fi
	else
		if [ $numb = "3" ] 
		then
			apk add python
			apk add python3
			apk add dos2unix
			pip3 install requests
			pip3 install colorama
			cp ~/spamer/spammer.py /usr/bin/spamer
			dos2unix /usr/bin/spamer
			chmod 777 /usr/bin/spamer
			spamer
		else
			if [ $numb = "q" ]
			then
				pkg install python
				pkg install python3
				pkg install python3-pip
				pkg install dos2unix
				pip3 install requests
				pip3 install colorama
				cp ~/spamer/spamer.py /data/data/com.termux/files/usr/bin/spamer
				dos2unix /data/data/com.termux/files/usr/bin/spamer
				chmod 777 /data/data/com.termux/files/usr/bin/spamer
				spamer
			else
				echo "Некорректный ввод"
			fi
		fi
	fi
fi
