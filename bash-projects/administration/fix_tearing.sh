#! /bin/bash

#INFORMATION
function info1 {
clear
echo -en "\n\n\t\t\tНажмите любую клавишу для продолжения"
read -n 1 line
}

function quit {
clear
exit
}
#INFORMATION_END

function main_menu {
clear
echo -e "\t\tФиксатор тиринга GNU\Linux & BSD\n"
echo -e "\t1. Исправить тиринг с видеочипом Intel"
echo -e "\t2. Исправить тиринг с видеочипом AMDGPU"
echo -e "\t3. Выход\n"
echo -e "\t\tMake by: Nikita Trunov-Dubovitskiy"
echo -e "\t\t\tBuild: 07-04-2021"
read -n 1 option
}

 function fix_intel {
 rm -r /etc/X11/xorg.conf.d/20-intel.conf
 echo "Section \"Device\"
 Identifier \"Intel Graphics\"
 Driver \"intel\"
 Option \"TearFree\" \"true\"
 EndSection" >> /etc/X11/xorg.conf.d/20-intel.conf
 info1
 }

 function fix_amdgpu {
 rm -r /etc/X11/xorg.conf.d/20-amdgpu.conf
 echo "Section \"Device\"
 Identifier \"AMD\"
 Driver \"amdgpu\"
 Option \"TearFree\" \"true\"
 EndSection" >> /etc/X11/xorg.conf.d/20-amdgpu.conf
 info1
 }
	 
while [ $? -ne 1 ]
do
main_menu
case $option in

0)
	break ;;
1)
	fix_intel ;;
2)
	fix_amdgpu ;;
3)
	quit ;;

esac
done 
