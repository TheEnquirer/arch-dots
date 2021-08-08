xset r rate 170 40
setxkbmap -option ctrl:swapcaps

xmodmap -e "keycode 191 = parenleft parenleft parenleft"
xmodmap -e "keycode 192 = parenright parenright parenright"

xmodmap -e "keycode 193 = braceleft braceleft braceleft"
xmodmap -e "keycode 194 = braceright braceright braceright"
