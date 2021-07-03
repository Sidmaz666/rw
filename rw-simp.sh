#!/bin/bash
readonly dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)" && shuf -r "$dir/rw.txt" | head -n1 | figlet -f "3d" -t | lolcat && shuf -r "$dir/rw.txt" | head -n1 | figlet -f "3d" -t | lolcat
