#!/system/bin/sh
banner() {
echo "\e[1;32m.___                              "
echo "\e[1;32m|   |_____   _____ _____  ______   "
echo "\e[1;32m|   \____ \ /     \\__  \ \____ \   "
echo "\e[1;32m|   |  |_> >  Y Y  \/ __ \|  |_> >.   "
echo "\e[1;32m|___|   __/|__|_|  (____  /   __/     "
echo "\e[1;32m    |__|         \/     \/|__|      "
echo ""
}

restartprogram() {
echo "
Esa Opción es incorrecta, elije de nuevo !
Elige entre el [ 1-2-3 ]"
sleep 2
clear
menuoption
}


miIP() {
	read -p "Dale Enter para continuar ! " enter
	command=$(wget https://ipapi.co/yaml/ -q -O .ip)
	echo -e "\e[36m"
	cat .ip
	echo " "
	rm .ip
	exit
}

tarjetaip() {
    echo ""
	echo ""
	echo -e "\e[36m Escribe la dirección IP \e[0m"
	echo -e "\e[1;32m╭─root@-4-/-ipmap"
	read -p "╰─$ " target
	command=$(wget https://ipapi.co/$target/yaml/ -q -O .ip)
	echo -e "\e[36m "
	cat .ip
	echo " "
	rm .ip
	exit
}
    
menuprincipal() {
    clear
	banner
	echo -e "\e[1;34m[1]\e[0m" "\e[36mInformación de mi IP\e[0m"
	echo -e "\e[1;34m[2]\e[0m" "\e[36mInformación de una IP\e[0m"
	echo -e "\e[1;34m[3]\e[0m" "\e[1;31mSalir de ipmap\e[0m"
    echo -e "\e[1;32m"
	echo -e "Elige entre el [1-2-3]"
	echo -e ""
	read -p "[+]~$ " opt
	if [ $opt -eq 1 ];
		then
			miIP
	elif [ $opt -eq 2 ];
		then
			tarjetaip                                            

	elif [ $opt -eq 3 ];
		then
			echo -e "\e[1;33mGracias por usar ipmap "
			exit
	else
		sleep 1
		restartprogram
	fi

}


menuprincipal

