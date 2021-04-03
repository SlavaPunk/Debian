#! /bin/bash

#INFORMATION
function info1 {
echo -en "\n\n\t\t\tНажмите любую клавишу для продолжения"
read -n 1 line
}
#INFORMATION_END

 function inst_programms {
 clear
 echo -e "\t\t\tВыберите пункт в меню\n"
 echo -e "\tУстановка графической среды:\n"
 echo -e "\t1. XFCE"
 echo -e "\t2. LXDE"
 echo -e "\t3. KDE Plasma"
 echo -e "\t4. GNOME"
 echo -e "\t5. IceWM"
 echo -e "\t6. JWM\n"
 echo -e "\tУстановка браузера:\n"
 echo -e "\t7. Firefox"
 echo -e "\t8. Chromium\n"
 echo -e "\t9. Выход\n"
 echo -e "\t\tMake by: Nikita Trunov-Dubovitskiy"
 echo -e "\t\t\tBuild: 03-04-2021"
 read -n 1 option
 }
	
  function inst_xfce {
  clear
  apt update
  apt install xorg xfce4 xfce4-terminal xfce4-xkb-plugin xterm
  if [ -e /bin/xfce4-session ]
  then
  echo "У вас установлен XFCE!"
  else
  echo "Вы не установили XFCE, установите его или выберите другое окружение"
  fi
  info1
  }
   
  function inst_lxde {
  clear
  apt update
  apt install xorg lxde-core lxappearance lxappearance-obconf lxhotkey-core lxterminal xterm
  if [ -e /bin/lxsession ]
  then
  echo "У вас установлен LXDE!"
  else
  echo "Вы не установили LXDE, установите его или выберите другое окружение"
  fi
  info1
  }
   
  function inst_kde {
  clear
  apt update
  apt install xorg plasma-desktop plasma-nm konsole dolphin lightdm xterm
  apt purge -y kdeconnect* plasma-discover* kwalletmanager*
  if [ -e /bin/plasma_session ]	#проверка на наличие установленного kde plasma
  then
  echo "У вас установлен KDE Plasma!"
  else
  echo "Вы не установили KDE Plasma, установите его или выберите другое окружение"
  fi
  info1
  }
   
  function inst_gnome {
  clear
  apt update
  apt install xorg xterm gnome-core gdm3
  if [ -e /bin/gnome-shell ]	#проверка на наличие установленного gnome
  then
  echo "У вас установлен GNOME!"
  else
  echo "Вы не установили GNOME, установите его или выберите другое окружение"
  fi
  info1
  }
   
  function inst_icewm {
  clear
  apt update
  apt install xorg xterm icewm pcmanfm lxterminal volumeicon-alsa fbxkb lightdm
  if [ -e /bin/icewm-session ]	#проверка на наличие установленного gnome
  then
  echo "У вас установлен IceWM!"
  else
  echo "Вы не установили IceWM, установите его или выберите другое окружение"
  fi
  info1
  }
   
  function inst_jwm {
  clear
  apt update
  apt install xorg jwm xterm pcmanfm lxterminal volumeicon-alsa fbxkb lightdm
  if [ -e /bin/jwm ]	#проверка на наличие установленного gnome
  then
  echo "У вас установлен JWM!"
  else
  echo "Вы не установили JWM, установите его или выберите другое окружение"
  fi
  info1
  }
   
  function inst_firefox {
  clear
  apt update
  apt install firefox-esr
  if [ -e /bin/firefox ]
  then
  echo "У вас установлен Firefox!"
  else
  echo "Вы не установили Firefox, установите его или выберите другой браузер"
  fi
  info1
  }
    
  function inst_chromium {
  clear
  apt update
  apt install chromium chromium-l10n
  if [ -e /bin/chromium ]
  then
  echo "У вас установлен Chromium"
  else
  echo "Вы не установили Chromium, установите его или выберите другой браузер"
  fi
  info1
  }
   
  function quit {
  clear
  exit
  }
  
  while [ $? -ne 1 ]
  do
  inst_programms
  case $option in
  
  0)
  back_main_menu ;;
  1)
  inst_xfce ;;
  2)
  inst_lxde ;;
  3)
  inst_kde ;;
  4)
  inst_gnome ;;
  5)
  inst_icewm ;;
  6)
  inst_jwm ;;
  7)
  inst_firefox ;;
  8)
  inst_chromium ;;
  9)
  quit ;;
  
  esac
  done
