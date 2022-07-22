#!/bin/zsh
tmpp=`mktemp`
mv "/Users/huxmarv/.config/alacritty/alacritty.yml" $tmpp
mv "/Users/huxmarv/.config/alacritty/alacritty_temp.yml" "/Users/huxmarv/.config/alacritty/alacritty.yml" 
mv $tmpp "/Users/huxmarv/.config/alacritty/alacritty_temp.yml"
touch ~/.config/alacritty/alacritty.yml
