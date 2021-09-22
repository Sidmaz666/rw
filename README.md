# Random Words When you Open your Terminal !!
![preview](https://github.com/Sidmaz666/rw/blob/main/rw-preview.gif?raw=true)
### What it does?
It is a very simple script that takes random words from the rw.txt file and show it to you. The script is self explaniatory. You can add the path of the script to your .zshrc , .bashrc or .fishrc(Not sure about that) file and can have random words shown to you every time when you open your terminal.
## Dependencies
It is not a dependant script it relies on a few packages. If you haven't installed these packages the script will not work as intended. The following dependencies are as follows.
1. shuf
2. head
3. lolcat
4. figlet
5. no-more-secrets (nms)
6. figlet-extra-fonts (3d)
7. BASH SHELL (Will work on zsh, might work on fish, dash etc)
## Installation
Grab/Install all of the dependencies mentioned here. Then move into the rw directory, open a terminal there and run the install.sh script.
 		./install.sh
Type your password, type y and then run the rw command on your Terminal !!
## USAGE: rw [OPTIONS] 
	The Word Text File is Located at /home/$USER/.config/rw.txt
	[OPTIONS]
	-i      	Solid Background Color
	--dizzy         Rainbow effect, No Solid Background
	-c 		Custom Word
	-n,--normal     Without 3d Fonts, Lolcat and NMS Animation
	-n -l -a        [-l] For Lolcat & [ -a ] for Animation.
	[-a] flag can be applied after -l
	[-l] flag only avalable while using -n, --normal flag.
	-h, --help      rw Usage
	Example:
	rw
	rw -i
	rw --dizzy
	rw -c "Hello"
	rw --normal -l
	rw -n -l -a
	rw -help ; rw --help
	Note: Running the command Will Clear your Terminal.
	If your Terminal Window size if smaller than 19 and 77, 
	Then the script will only output one word.
	You can use multiple flags with the [-c] flag.
	Example:
	rw -c "Hello" -id    Rainbow Effect & Solid Background
	rw -c "Hello" -di
	rw -c "Hello" -i     Solid Background & Custom Text
	rw -c "Hello" -d     Rainbow Effect
	*Mention the custom word inside double "quotes".
