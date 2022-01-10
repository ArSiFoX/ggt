if [ "$(whoami)" != 'root' ];
	then
		echo "У вас нет root прав. Продолжить?(Y/n)"
		read continue
		if [ $continue != 'n' ];
			then
				apt install python3 git
				chmod +x ggt.py
				clear
				echo 'Программа установлена!'
			else
				exit
			fi
	else
		apt install python3 git
		chmod +x ggt.py
		clear
		echo 'Программа установлена!'
		echo 'Использовать как бинарный файл?(Y/n)'
		read utb
		if [ $utb != 'n' ];
			then
				echo "python3 /bin/ggt.py" > ggt
				install ggt /bin
				install ggt.py /bin
				rm -f ggt
			else
				exit
			fi
	fi
