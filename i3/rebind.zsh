xset r rate 170 40
setxkbmap -option ctrl:swapcaps

xmodmap -e "keycode 191 = parenleft parenleft parenleft"
xmodmap -e "keycode 192 = parenright parenright parenright"

xmodmap -e "keycode 193 = braceleft braceleft braceleft"
xmodmap -e "keycode 194 = braceright braceright braceright"


#spare_modifier="Hyper_L"
#xmodmap -e "keycode 134 = $spare_modifier"
#xmodmap -e "remove mod4 = $spare_modifier"
#xmodmap -e "add ControlR = $spare_modifier"
xmodmap -e 'clear mod3'
xmodmap -e 'keycode 134 = Hyper_R'
xmodmap -e 'remove mod4 = Hyper_R'
xmodmap -e 'add mod3 = Hyper_R'


