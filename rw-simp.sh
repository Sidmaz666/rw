#!/bin/bash
readonly dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)" 
do="$(shuf -r "$dir/rw.txt" | head -n1 )"
	dn="$(shuf -r "$dir/rw.txt" | head -n1)"
		echo "["$do"] ["$dn"]" | figlet -f "3d" -t | nms -a -s | lolcat -a -d 1 -s 8000
