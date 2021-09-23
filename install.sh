#!/bin/bash
#   _____  0    | |\    /|           / /   / /   / /  
#  | (___  _  __| | \  / | __ _ ____/ /_  / /_  / /_  
#   \___ \| |/ _` | |\/| |/ _` |_  / '_ \| '_ \| '_ \    
#   ____) | | (_| | |  | | (_| |/ /| (_) | (_) | (_) |
#  |_____/|_|\__,_|_|  |_|\__,_/___|\___/ \___/ \___/     :)
install_func (){
sudo cp rw.txt /home/$USER/.config/rw.txt
sudo cp rw /bin/rw
while IFS= read line; do
printf "%s\n" "$line"
done <<-EOF

Installation Successfull!!

  Type rw -h to know more..."

  Install Dependencies:

		                	lolcat
		                	nms(no-more-secrets)
		               	        figlet
		                       	figlet-extra-fonts (3d)
EOF
exit
}
uninstall_func (){
if [[ -f "/home/$USER/.config/rw.txt" ]] && [[ -f "/bin/rw" ]]; then
       	sudo rm /home/$USER/.config/rw.txt 
	sudo rm /bin/rw 
       	echo -e "Random Word Uninstalled From your System \n"
       exit;	
else
	echo -e "\nRandom Word is Not Installed on your system\n" 
       	read -p "Install/Reinstall? (y/n) " confilm 
		if [[ "$confilm" = "y" ]]; then
			install_func
		else
			exit;
		fi
fi
}
[[ "$1" = "--uninstall" ]] && uninstall_func
rw_install () {
read -p "Install Random Word?[y/n]: " conf 
     if	[[ "$conf" = "y" ]]; then
       	install_func 
	else       
	echo "Didn't installed anything..!!" && exit
     fi
}
figlet_fonts (){
 	git clone https://github.com/xero/figlet-fonts.git &&
		cd figlet-fonts/ &&
		sudo cp -R *  /usr/share/figlet/ ||
		sudo cp -R * /usr/share/figlet/fonts &&
		[[ -f "/usr/share/figlet/3d.flf" ]] ||
		[[ -f "/usr/share/figlet/fonts/3d.flf" ]] &&
		echo -e "Figlet Fonts [Installed]\n" ||
		echo -e "Unable to Install Figlt-Fonts\n Continuing with installing no-more-secrets....\n" &&
		echo -e "Visit https://github.com/xero/figlet-fonts to know how to install figlet-fonts manually!!\n " &&
		cd .. &&
		rm -Rf figlet-fonts/ ||
		echo -e "Unable to Delete Figlet-Fonts directory\n"
		}
get_nms (){
	[[ "$(man git)" ]] &&
	figlet_fonts ||
	git clone https://github.com/bartobri/no-more-secrets.git &&
	 cd ./no-more-secrets &&
	 make nms &&
	 sudo make install &&
	 rm -Rf no-more-secrets/ &&
	 echo "no-more-secrets [Installed]" && exit ||
	 sudo pacman -S git ||
	 sudo apt-get install git &&
	 install ||
	 echo -e "Something Went Wrong!!\n" &&
         echo -e "Install essential build packages like base-devel, cmake, fakeroot, etc.." &&
	 read -p "Install build-essential/base-devel[y/n]: " $noob &&
	 [[ "$noob"="y" ]] &&
	 sudo pacman -S base-devel || sudo apt-get install build-essential intltool && install || echo "Didn't Installed No-More-Secrets!!" && exit 
}
install(){
 read -p "Install Lolcat, figlet & NMS? [y/n]: " $mol 	
 [[ "$mol"="y" ]] && if [[ "$(man lolcat)" ]]; then
       	echo "lolcat: [Installed]" 
else
	sudo pacman -S lolcat || sudo apt-get install lolcat
  fi
  if [[ "$(man figlet)" ]];then
       echo "figlet: [Installed]" 
  else
	sudo pacman -S figlet || sudo apt-get install figlet
     fi
  if [[ "$(man nms)" ]];then
	echo -e "no-more-secrets: [Installed]\n" 
else
	get_nms	
	fi || echo "Didn't Installed Anything" && exit
}
check () {
	while true;	
	do
 if [[ "$(man lolcat)" ]]; then
       	echo "lolcat: [Installed]" 
  fi
  if [[ "$(man figlet)" ]];then
       echo "figlet: [Installed]" 
     fi
  if [[ "$(man nms)" ]];then
	echo "no-more-secrets: [Installed]" && rw_install
else 
	install
       fi
	done
}
arch (){
	 while IFS= read line; do
	printf "%s\n" "$line"
	done <<-EOF

 █████  ██████   ██████ ██   ██
██   ██ ██   ██ ██      ██   ██
███████ ██████  ██      ███████
██   ██ ██   ██ ██      ██   ██
██   ██ ██   ██  ██████ ██   ██

EOF
	check 
}
deb (){
	 while IFS= read line; do
	printf "%s\n" "$line"
	done <<-EOF
██████  ███████ ██████  ██  █████  ███    ██
██   ██ ██      ██   ██ ██ ██   ██ ████   ██
██   ██ █████   ██████  ██ ███████ ██ ██  ██
██   ██ ██      ██   ██ ██ ██   ██ ██  ██ ██
██████  ███████ ██████  ██ ██   ██ ██   ████

EOF
	check 
}
[[ "$(pacman -h)" ]] && arch && exit
[[ "$(apt -h)" ]] && deb && exit
