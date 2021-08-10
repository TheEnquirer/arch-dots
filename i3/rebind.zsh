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




spare_modifier="Hyper_L"
xmodmap -e 'clear mod2'
xmodmap -e "keycode 196 = $spare_modifier"
xmodmap -e "remove mod4 = $spare_modifier" # hyper_l is mod4 by default
xmodmap -e "add mod2 = $spare_modifier"

# Map space to an unused keycode (to keep it around for xcape to
# use).
#xmodmap -e "keycode any = space"

# Finally use xcape to cause the space bar to generate a space when tapped.
pkill xcape
xcape -t 200 -e "$spare_modifier=space"

