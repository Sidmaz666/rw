#!/bin/bash
#   _____  0    | |\    /|           / /   / /   / /  
#  | (___  _  __| | \  / | __ _ ____/ /_  / /_  / /_  
#   \___ \| |/ _` | |\/| |/ _` |_  / '_ \| '_ \| '_ \    
#   ____) | | (_| | |  | | (_| |/ /| (_) | (_) | (_) |
#  |_____/|_|\__,_|_|  |_|\__,_/___|\___/ \___/ \___/     :)
install_func (){
readonly current_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cp rw.txt /home/$USER/.config/rw.txt
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
}
uninstall_func (){
if [[ -f "/home/$USER/.config/rw.txt" ]] && [[ -f "/bin/rw" ]]; then
       	sudo rm /home/$USER/.config/rw.txt 
	sudo rm /bin/rw 
       	echo -e "Random Word Uninstalled From your System \n"
       exit;	
else
	echo -e "Random Word is Not Installed on your system\n" 
       	read -p "Install/Reinstall? (y/n) " confilm 
		if [[ "$confilm" = "y" ]]; then
			install_func
		else
			exit;
		fi
fi
}
[[ "$1" = "--uninstall" ]] && uninstall_func 
read -p "Install Random Word?[y/n]: " conf 
     if	[[ "$conf" = "y" ]]; then
       	install_func 
	else       
	echo "Didn't installed anything..!!"
     fi
